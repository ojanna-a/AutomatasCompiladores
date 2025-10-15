%option noyywrap
%{
	#include<stdio.h>
	FILE *yyin;

%}
PALABRAS_R if|else|switch|case|default|for|while|do|break|continue|return|goto|bool|char|short|int|long|float|double|void|wchar_t|class|struct|union|enum|typename|template|friend|virtual|explicit|private|protected|public|operator|this|new|delete|using|namespace|try|catch|try|throw|noexcept|false|export|import|module|include
COMENTARIOS [//][a-zA-Z]*
VARIABLESN [0-9]+
VARIABLES [a-zA-Z]+
OPARITMETICOS [+|-|*|/|%]+
OPLOGICOS [&^~<<>>]+
SIMBOLOS [;|,|:|#|<|>|?|.]+
%%
{PALABRAS_R} {printf("hay palabras reservadas:%s\n", yytext);}
{COMENTARIOS} {printf("es un comentario: %s\n");
	int c = 0;
	if(c > 0){
	c++;
	printf("c%s\n", c);
			   }
		}
{VARIABLESN} {printf("es una variable: %s\n", yytext);}
{OPARITMETICOS} {printf("es un operador aritmetico:%s\n", yytext);}
{OPLOGICOS} {printf("es un operador logico: %s\n", yytext);}
{SIMBOLOS} {printf("es un simbolo: %s\n", yytext);}
%%
int main()
{
	yyin = fopen("archivo.cpp", "r");
	if(!yyin){
	perror("no sepudo abrir el archivo");
	return 1;
		}
	yylex();
	fclose(yyin);
	return 0;
}