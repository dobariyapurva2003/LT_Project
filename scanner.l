%{
#include<stdio.h>
%}
kw "how"|"many"|"means"
op "kg"|"pound"|"gram"|"stone"
space " "
digit [0-9]
Int {digit}+
Float {digit}+(.{digit})
qm "?"
ws [\t]
eos "."
sep ","
%%
{kw} {printf("Keyword - %s\n",yytext);}
{op} {printf("Operator - %s\n",yytext);}
{Int} {printf("Integer - %s\n",yytext);}
{Float} {printf("Float Number - %s\n",yytext);}
{qm} {printf("que tag - %s\n",yytext);}
{eos} {printf("eos - %s\n",yytext);}
{sep} {printf("sep - %s\n",yytext);}
{ws} {printf("ws \n",yytext);}
{space} {printf("Space is there - %s \n",yytext);}
. {printf("Invalid Token: %s\n",yytext);}
%%
int yywrap(){
return 1;
}
int main() {
yylex();
return 0;
} 