%{
#include "ifif.tab.h"
%}
%%
if      { return IF; }
then    { return THEN; }
else    { return ELSE; }
[a-zA-Z_][a-zA-Z0-9_]* { return ID; }
[ \t\n] ;
%%
int yywrap(){
    return 1;
}