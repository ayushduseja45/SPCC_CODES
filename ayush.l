%{
    #include<stdio.h>
    int w=0;
    int l=0;
    int c=0;
%}

%%
\n  {l++;c++;}
[\t]+   {c+=yyleng;}
[a-zA-Z0-9]+   {w++;c+=yyleng;}
.   {c++;}
%%

int main(){
    printf("enter : ");
    yylex();
    printf("num of l are %d : ",l);
    printf("num of w are %d : ",w);
    printf("num of c are %d : ",c);
    return 0;

}
int yywrap(){
    return 1;
}