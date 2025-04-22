%{
    #include<stdio.h>
    int line=0;
    int word=0;
    int chars=0;
%}

%%
\n  {line++,chars++;}
[\t]+   {chars+=yyleng;}
[A-Za-z0-9]+     {word++;chars+=yyleng;}
.   {chars++;}
%%
int yywrap(){
    return 1;
}
int main(){
    printf("wnter the u want to chk");
    yylex();
    printf("num of line %d",line);
    printf("num of char %d",chars);
    printf("num of word %d",word);
    return 0;
}