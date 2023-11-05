#if 0
#ifndef lint
static char const copyright[] =
"@(#) Copyright (c) 1989, 1993\n\
	The Regents of the University of California.  All rights reserved.\n";
#endif /* not lint */
#endif

#ifndef lint
#if 0
static char sccsid[] = "@(#)cat.c	8.2 (Berkeley) 4/27/95";
#endif
#endif /* not lint */
#include <sys/cdefs.h>
__FBSDID("$FreeBSD: src/bin/cat/cat.c,v 1.32 2005/01/10 08:39:20 imp Exp $");

#include <sys/param.h>
#include <sys/stat.h>
#ifndef NO_UDOM_SUPPORT
#include <sys/socket.h>
#include <sys/un.h>
#include <errno.h>
#endif

#include <ctype.h>
#include <err.h>
#include <fcntl.h>
#include <locale.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <stddef.h>

int bflag, eflag, nflag, sflag, tflag, vflag;
int rval;
const char *filename;

static void usage(void);
static void scanfiles(char *argv[], int cooked);
static void cook_cat(FILE *);
static void raw_cat(int);

int main(int argc, char *argv[]){
    int ch;
    
    setlocale(LC_CTYPE, ""); //set local region print settings

    while ((ch = getopt(argc, argv, "benstuv")) != -1)
		switch (ch) {
		case 'b':
			bflag = nflag = 1;	/* -b implies -n */
			break;
		case 'e':
			eflag = vflag = 1;	/* -e implies -v */
			break;
		case 'n':
			nflag = 1;
			break;
		case 's':
			sflag = 1;
			break;
		case 't':
			tflag = vflag = 1;	/* -t implies -v */
			break;
		case 'u':
			setbuf(stdout, NULL);
			break;
		case 'v':
			vflag = 1;
			break;
		default:
			usage();
		}
	argv += optind; //Advance argv to point at the first non-option argument

    if (bflag || eflag || nflag || sflag || tflag || vflag)
		scanfiles(argv, 1);
    else
		scanfiles(argv, 0);
    if(fclose(stdout)) //close 
        err(1,"stdout");
    exit(rval);
}

static void usage(void){
    fprintf(stderr,"usage : cat [-b -e -n -s -t -u -v] [file ... ]");
    exit(1);
}


/**
 * First check file exists using argv. If not use stdin as file. Initialise fd
 * If file exists then only open fd and set file pointer
*/
static void scanfiles(char *argv[], int cooked){
    int i = 0;
    char *path;
    FILE *fp;

    while((path = argv[i]) != NULL || i == 0){
        int fd;

        if(path == NULL || strcmp(path,"-") == 0){
            filename = "stdin";
            fd = STDIN_FILENO;
        }
        else{
            filename = path;
            fd = open(path, O_RDONLY);
        }

        if(fd < 0){ //if file does not exist warn to user
            warn("%s", path);
            rval = 1;
        }
        else if(cooked){
            if(fd == STDIN_FILENO)
                cook_cat(stdin);
            else{
                fp = fdopen(fd, "r");
                cook_cat(fp);
                fclose(fp);
            }
        }
        else{
            raw_cat(fd);
            if(fd != STDIN_FILENO)
                close(fd);
        }

        if(path == NULL)
            break;
        ++i;
    }
}

static void cook_cat(FILE *fp)
{
	int ch, gobble, line, prev;

	/* Reset EOF condition on stdin. */
	if (fp == stdin && feof(stdin))
		clearerr(stdin);

	line = gobble = 0;
	for (prev = '\n'; (ch = getc(fp)) != EOF; prev = ch) {
		if (prev == '\n') {
			if (sflag) {
				if (ch == '\n') {
					if (gobble)
						continue;
					gobble = 1;
				} else
					gobble = 0;
			}
			if (nflag && (!bflag || ch != '\n')) {
				(void)fprintf(stdout, "%6d\t", ++line);
				if (ferror(stdout))
					break;
			}
		}
		if (ch == '\n') {
			if (eflag && putchar('$') == EOF)
				break;
		} 
        else if (ch == '\t') {
			if (tflag) {
				if (putchar('^') == EOF || putchar('I') == EOF)
					break;
				continue;
			}
		} 
        else if (vflag) {
			if (!isascii(ch) && !isprint(ch)) {
				if (putchar('M') == EOF || putchar('-') == EOF)
					break;
				ch = toascii(ch);
			}
			if (iscntrl(ch)) {
				if (putchar('^') == EOF || putchar(ch == '\177' ? '?' : ch | 0100) == EOF)
					break;
				continue;
			}
		}
		if (putchar(ch) == EOF)
			break;
	}
	if (ferror(fp)) {
		warn("%s", filename);
		rval = 1;
		clearerr(fp);
	}
	if (ferror(stdout))
		err(1, "stdout");
}

static void raw_cat(int rfd)
{
	int off, wfd;
	ssize_t nr, nw;
	static size_t bsize;
	static char *buf = NULL;
	struct stat sbuf;

	wfd = fileno(stdout);
	if (buf == NULL) {
		if (fstat(wfd, &sbuf))
			err(1, "%s", filename);
		bsize = MAX(sbuf.st_blksize, 1024);
		if ((buf = malloc(bsize)) == NULL)
			err(1, "buffer");
	}
	while ((nr = read(rfd, buf, bsize)) > 0)
		for (off = 0; nr; nr -= nw, off += nw)
			if ((nw = write(wfd, buf + off, (size_t)nr)) < 0)
				err(1, "stdout");
	if (nr < 0) {
		warn("%s", filename);
		rval = 1;
	}
}