%{
#include <stdio.h>
int yylex();
int yyerror(char* msg);
int level = 0;
%}
%token IF THEN ELSE ID
%%
stmt : IF expr THEN stmt           { level++; printf("Level: %d\n", level); }
     | IF expr THEN stmt ELSE stmt { level++; printf("Level: %d\n", level); }
     | ID                          { /* valid simple statement */ }
     ;
expr : ID ;
%%
int main() {
    yyparse();
    return 0;
}
int yyerror(char *msg) {
    printf("Error: %s\n", msg);
    return 0;
}
