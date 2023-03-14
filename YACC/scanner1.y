%{
#include<stdio.h>
#include<stdlib.h>
#define YYERROR_VERBOSE 1
void yyerror(char *err);
%}
%token K K1 K2 O D E1 W
%%
S: A {printf("\nthis sentence is valid.\n"); return 0;};
A: D W O W K W R {};
R: K1 W K2 W O E1 {}
%%
void yyerror(char *err) {
printf("Error: ");
fprintf(stderr, "%s\n", err);
exit(1);
}
void main(){
printf("Enter String: ");
yyparse();
printf("\n valid Expression...\n");
}