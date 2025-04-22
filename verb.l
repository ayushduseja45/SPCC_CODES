
%{
#include <stdio.h>
%}

%%
"run"|"eat"|"play"                 { printf("%s --> Verb\n", yytext); }
"quickly"|"slowly"|"silently"     { printf("%s --> Adverb\n", yytext); }
"big"|"small"|"beautiful"         { printf("%s --> Adjective\n", yytext); }
"boy"|"girl"|"dog"                { printf("%s --> Noun\n", yytext); }
[ \t\n]+                          ; // ignore spaces
.                                 ; // ignore other characters
%%

int yywrap() { return 1; }

int main() {
    printf("Enter text:\n");
    yylex();
    return 0;
}