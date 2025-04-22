%{
    #include<stdio.h>
    int count_p=0;
    int count_s=0;
%}

%%
"printf"    {count_p++;}
"scanf"     {count_s++;}
%%

int yywrap(){
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

    printf("num of pprintdf aree %d",count_p);
    printf("nums of scanf are %d",count_s);
    return 0;
}