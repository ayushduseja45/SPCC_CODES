%{
    #include<stdio.h>
    int word=0;
    int line=0;
    int ch=0;

%}
%%
[^\s\n]+ {word++;ch+=yyleng;}
\n { ch++;line++;}
. {ch++;}
%%
int main ()
{
    printf("enter the para to count the no of words character and lines :\n");
    yylex();
    printf("the no of words is %d\n",word);
    printf("the no of character is %d\n",ch);
    printf("the no of lines is %d\n",line);
    return 0;

}
int yywrap()
{
    return 1;
}