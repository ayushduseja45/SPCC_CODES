%{
    #include "varc.tab.h"
    #include <string.h>
%}

%%
"int"|"float"|"char"|"double"|"if"|"else"|"while"|"for"|"return" { return 999; }
[a-zA-Z][a-zA-Z0-9_]*    { return VAR; }
.|\n                    { return 0; }
%%

int yywrap() {
    return 1;
}