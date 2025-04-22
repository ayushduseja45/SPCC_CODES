%{
#include "if.tab.h"   // Match the name of your Bison file if you use "if.y"
%}

%%

"if"        { return IF; }
"else"      { return ELSE; }
"{"         { return '{'; }
"}"         { return '}'; }
[\t\n]+     ;                // Ignore whitespace
.           ;                // Ignore any other character

%%

int yywrap() {
    return 1;
}
