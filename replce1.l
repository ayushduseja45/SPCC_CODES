%{
    #include<stdio.h>
    int pf=0;
    int sf=0;
%}
%%
"printf"    {pf++; fprintf(yyout,"writef");}
"scanf"     {sf++; fprintf(yyout,"readf");}
%%

int main(){
    yyin=fopen("sample.c","r");
    yyout=fopen("input1.c","w");
    yylex();
    printf("no of printf %d scanf %d : ",pf,sf);
    return 0;
}
int yywrap(){
    return 1;
}