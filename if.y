%{
#include <stdio.h>

int level = 0;
void print_level();
void yyerror(const char *s);
int yylex(void);
%}

%token IF ELSE

%%

stmt 
    : IF '{' stmt '}'                 { level++; print_level(); level--; }
    | stmt ELSE '{' stmt '}'         { level++; print_level(); level--; }
    | /* empty */                    { /* base case */ }
    ;

%%

void print_level() {
    printf("The current level is: %d\n", level);
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    printf("Enter the nested if-else block:\n");
    yyparse();
    return 0;
}
