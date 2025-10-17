%option noyywrap

%{
	#include <stdio.h>
%}
TIPO_DATO char|int|double|float|bool
VARIABLES [a-zA-Z]+

%%
{TIPO_DATO} {printf("es una variable de tipo: %s\n", yytext); }
{VARIABLES} {printf("es una variable: %s\n", yytext); }

%%

int main() 

{
	yylex();
	return 0;
}