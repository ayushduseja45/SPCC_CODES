%{
    #include<stdio.h>
    int vowels=0;
    int con =0;
%}
%%
[aAeEiIoOuU]    {vowels++;}
[a-zA-Z]    {con++;}
.   ;
%%
int yywrap()
{
    return 1;
}

int main(int argc, char* arvg[]){
    FILE *fp;
    fp=fopen(arvg[1],"r");
    if(!fp){
        printf("error");
        return 1;
    }

    yyin=fp;
    yylex();
    fclose(fp);

    printf("num of v %d", vowels);
    printf("um od c %d",con);
    return 0;
}