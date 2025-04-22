%{
    #include "var.tab.h"
    #include <string.h>
%}

%%
"int"|"float"|"if"|"else"|"printf"|"scanf"|"while"|"return"|"break"     {return 999;}
[a-zA-Z][a-zA-Z0-9_]*   {return VAR;}
.|\n    {return 0;}
%%
int yywrap(){
    return 1;
}