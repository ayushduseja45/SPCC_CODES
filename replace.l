%{
#include<stdio.h>
#include<string.h>
int comments=0;
%}
%%
"//".*  {comments++;}
%%
int main(){
    yyin=fopen("sample.c","r");
    yyout=fopen("output.c","w");
    yylex();
    printf("the num of comments are %d",comments);
    return 0;
}
int yywrap(){
    return 1;
}