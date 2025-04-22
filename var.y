%{
    #include<stdio.h>
    int yylex();
    int yyerror(char *msg);
%}

%token VAR

%%
input: VAR{printf("valid var name \n");}
    | error {yyerror("invalid name");}
    ;
%%

int main(){
    printf("enter the var name u want to check");
    yyparse();
    return 0;
}

int yyerror(char *msg){
    printf("%s",msg);
    return 0;
}