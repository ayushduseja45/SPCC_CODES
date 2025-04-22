%{
#include <stdio.h>
#include <stdlib.h>
int i;
%}

%%
[0-9]+  {i=atoi(yytext);
	   if(i%2 == 0)
		printf("%s is even",yytext);
	   else
		printf("%s is odd",yytext);
        }
. ;
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter the number u want to check : ");
    yylex();
    return 0;
}
