%{
    #include "calc.tab.h"
%}
%%
[0-9]+  {yylval=atoi(yytext); return NUMBER;}
[+-/*\()]   {return yytext[0];}
\n {return 0;}
.   {printf("invalid char");}
%%

int yywrap(){
    return 1;
}