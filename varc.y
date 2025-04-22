%{
    #include<stdio.h>
    int yylex();
    int yyerror(char *msg);
%}

%token VAR

%%
input : VAR { printf("Valid variable name\n"); }
      | error { yyerror("Invalid variable name\n"); }
      ;
%%

int main() {
    printf("Enter the variable name you want to check: ");
    yyparse();
    return 0;
}

int yyerror(char *msg) {
    printf("%s", msg);
    return 0;
}