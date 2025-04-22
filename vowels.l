%{
    #include<stdio.h>
    int vowel=0;
    int consonant=0;
%}
%%
[aAeEiIoOuU] {vowel++;}
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {consonant++;}
. ;
%%
int main()
{
    printf("enter the word to give vowel and consonant count : \n");
    yylex();
    printf("the no of vowels is %d\n",vowel);
    printf("the no of consonant is %d\n",consonant);
    return 0;  
}
int yywrap()
{
    return 1;
}