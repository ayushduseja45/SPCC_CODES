%{
    #include<stdio.h>
    int yylex();
    #include<stdlib.h>
    int yyerror(char *msg);
%}

%token NUMBER
%left '+''-'
%left '*''/'

%%
S:S'+'S {printf("%d\n", $1+$3);}
| S'-'S {printf("%d\n", $1-$3);}
| S'*'S {printf("%d\n",$1*$3);}
| S'/'S {if($3==0) printf("invalid num cant divide by 0"); else printf("%d\n",$1/$3);}
| '('S')' {$$=$2;}
| NUMBER {$$=$1;}
;
%% 

int main(){
    printf("enter the exp");
    yyparse();
    return 0;
}

int yyerror(char *msg){
    printf("Error %s",msg);
    return 0;
}