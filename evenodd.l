%{
    #include<stdio.h>
    #include<stdlib.h>
    int num;
%}

%%
[0-9]+ {
    num=atoi(yytext);
    if(num%2==0)
    printf("num is even %s",yytext);
    else
    printf("nums is odd %s",yytext);
}
. ;
%%

int main(){
    printf("enter the u want to odd even for");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}