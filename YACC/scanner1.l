%{
#include<stdio.h>
#include "pro.tab.h"
%}
keyword "means"
keyword1 "how"
keyword2 "many"
op "kg" | "gram" | "pound" | "stone"
eos1 "?"
digit [0-9]
ws " "
%%
{keyword} {
printf("%10s : keyword\n",yytext);
return K;
}
{keyword1} {
printf("%10s : keyword1\n",yytext);
return K1;
}
{keyword2} {
printf("%10s : keyword2\n",yytext); 
return K2;
}
{op} {
printf("%10s : operator\n",yytext);
return O;
}
{digit} {
printf("%10s : digit\n",yytext);
return D;
}
{eos1} {
printf("%10s : end of line \n",yytext);
return E1;
}
{ws} {
return W;
}
. {
printf("%10s : invalid\n",yytext);
}
%%
int yywrap(){
return 1;
}