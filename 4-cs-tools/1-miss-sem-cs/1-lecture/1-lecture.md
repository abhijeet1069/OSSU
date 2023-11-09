# Shell

```zsh
satyam@satyam-2 1-lecture % date
Thu Nov  9 08:59:38 IST 2023

satyam@satyam-2 1-lecture % echo jd
jd

satyam@satyam-2 1-lecture % echo $PATH
/usr/local/smlnj/bin:/opt/homebrew/bin:/Library/Frameworks/Python.framework/Versions/3.10/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/satyam/Library/Java/JavaVirtualMachines/openjdk-18.0.2.1/Contents/Home/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/usr/local/share/dotnet:~/.dotnet/tools:/usr/local/go/bin:/usr/local/smlnj/bin:/opt/homebrew/bin:/Library/Frameworks/Python.framework/Versions/3.10/bin

satyam@satyam-2 1-lecture % which java
/usr/bin/java

#home directory
satyam@satyam-2 1-lecture % echo ~
/Users/satyam

satyam@satyam-2 src % ls -l
total 8
-rw-r--r--  1 satyam  staff  91 Nov  9 09:31 file1.txt
satyam@satyam-2 src % chmod +r-w file1.txt 
satyam@satyam-2 src % ls -l               
total 8
-r--r--r--  1 satyam  staff  91 Nov  9 09:31 file1.txt
satyam@satyam-2 src % 

# rename or move file, source and destination
satyam@satyam-2 src % mv file1.txt file2.txt
satyam@satyam-2 src % ls
file2.txt 

# copy files
satyam@satyam-2 src % cp file2.txt file3.txt
satyam@satyam-2 src % ls
file2.txt       file3.txt
satyam@satyam-2 src % 

```

## Streams

Input stream
Output stream

```zsh
satyam@satyam-2 src % cat < file1.txt
double double toil and trouble
fire burn and caludron bubble

# print contents of file1.txt using cat. Then output same lines in witch.txt
satyam@satyam-2 src % cat < file1.txt > witch.txt
satyam@satyam-2 src % ls
file1.txt       file2.txt       witch.txt

```

## Pipes

```zsh
satyam@satyam-2 src % curl --head --silent  google.com                         
HTTP/1.1 301 Moved Permanently
Location: http://www.google.com/
Content-Type: text/html; charset=UTF-8
Content-Security-Policy-Report-Only: object-src 'none';base-uri 'self';script-src 'nonce-73Ai28RPT30opaofrQ5OOQ' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp
Date: Thu, 09 Nov 2023 14:48:22 GMT
Expires: Sat, 09 Dec 2023 14:48:22 GMT
Cache-Control: public, max-age=2592000
Server: gws
Content-Length: 219
X-XSS-Protection: 0
X-Frame-Options: SAMEORIGIN


satyam@satyam-2 src % curl --head --silent  google.com | grep -i content-length
Content-Length: 219
```

## tee

write both to file and console.

## File Mode

In Octal
Read - 4
Write - 2
Execute - 1

-rw-r--r--

- indicates file
-rw read and write permission for user
-r read permission for group
-r read permission for group
