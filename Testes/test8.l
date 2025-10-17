%option noyywrap
%{
    #include <stdio.h>
    int c = 0;
%}
BLOOM aplicar|calcular|clasificar|completar|construir|demostrar|desarrollar|emplear|ejecutar|ilustrar|implementar|interpretar|manipular|operar|organizar|preparar|resolver|transferir|usar|utilizar
%%
{BLOOM} {printf("es parte de la taxonomia boom: %s\n", yytext); c++;}
%%

int main(void)
{
	yylex();
     printf("Total de palabras de la taxonomia bloom encontradas: %d\n", c);
    return 0;
}
