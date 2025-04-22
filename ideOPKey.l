%{
#include <stdio.h>

int kw = 0, id = 0, op = 0;
%}

%%

"int"|"float"|"if"|"else"|"return" { kw++; }              // keywords
[a-zA-Z_][a-zA-Z0-9_]*     { id++; }              // identifiers
"+"|"-"|"*"|"/"|"="        { op++; }              // operators
[ \t\n]+                  ;                       // ignore whitespace
.                         ;                       // ignore other characters

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    printf("Keywords: %d\n", kw);
    printf("Identifiers: %d\n", id - kw); // remove keywords counted as id
    printf("Operators: %d\n", op);
    return 0;
}