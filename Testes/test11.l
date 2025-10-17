%option noyywrap
%{
	#include<stdio.h>
	FILE *yyin;
%}
COMENTARIO_LINEA  "//".*
COMENTARIO_TEXTO "/\\*([^*]|\\*+[^*/])*\\*+/"

%%
{COMENTARIO_LINEA} {printf("es un comentario de linea: %s\n");}
{COMENTARIO_TEXTO} {printf("es un comentario en texto: %s\n");}

%%
int main()
{
	yyin = fopen("archivo.txt", "r");
    if (!yyin) {
        printf("No se pudo abrir el archivo\n");
        return 1;
    }
    yylex();
    fclose(yyin);
	return 0;
}