%{
    #include<stdio.h>
    int k=0;
    int i=0;
    int o=0;
%}
%%
"int"|"float"|"return"|"if"|"else"  {k++;}
"+"|"-"|"*"|"/" {o++;}
[a-zA-Z][a-zA-Z0-9]+    {i++;}
.   ;
%%
int yywrap(){
    return 1;
}
int main(){
    printf("enter the code u want to check the counrt : \n");
    yylex();
    printf("num of k are %d \n",k);
    printf("num of i are %d \n",i);
    printf("num of o are %d \n",o);
    return 0;


}