#include<stdio.h>
#include<err.h>

int main(){
    FILE *file;
    char* path = "../../res/henry-v.txt";

    file = fopen(path, "r");

    if(file == NULL){
        warn("%s", path);
        return 1;
    }

    char character;
    while((character = fgetc(file)) != EOF)
        //putchar(character);

    fclose(file);
    return 0;
}