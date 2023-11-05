#include<stdio.h>
#include<unistd.h>

/**
satyam@satyam-2 bin % ./myApp -a
Hello, World A!!
satyam@satyam-2 bin % ./myApp -b
Hello, World B!!
satyam@satyam-2 bin % ./myApp -c
./myApp: illegal option -- c
**/

int main(int argc, char* argv[]){
    int ch;
    while((ch = getopt(argc, argv, "ab")) != -1){
        switch(ch){
            case 'a' : printf("Hello, World A!!\n");
                        break;
            case 'b' : printf("Hello, World B!!\n");
                        break;
            default : printf("\n");
                        break;  
        }
         printf("optind = %d \n", optind); 
    }
}