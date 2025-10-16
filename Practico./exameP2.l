%option noyywrap
%{
	#include<stdio.h>
	FILE *yyin;
	int c = 0;

%}
PALABRAS_R if|else|switch|case|default|for|while|do|break|continue|return|goto|bool|char|short|int|long|float|double|void|wchar_t|class|struct|union|enum|typename|template|friend|virtual|explicit|private|protected|public|operator|this|new|delete|using|namespace|try|catch|try|throw|noexcept|false|export|import|module|include|main
COMENTARIO_LINEA [//][a-zA-Z]*
COMENTARIO_TEXTO [/][a-zA-Z0-9][/]
VARIABLESN [0-9]+[.][0-9]*
VARIABLES [a-zA-Z]+
OPARITMETICOS "+"|"-"|""|"%"|"+="|"=="|"="|"/="|"%="|"-="|"++"|"--"
OPLOGICOS [&|^|~|<<|>>]+
SIMBOLOS [;|,|:|#|<|>|?|.|$|"]|(["][a-zA-Z0-9]["])]+
%%
{PALABRAS_R} {printf("es una palabra reservada:%s\n", yytext);}
{COMENTARIO_LINEA} {printf("es un comentario: %s\n"); c++;}
{COMENTARIO_TEXTO} {printf("es un comentario: %s\n"); c++;}
{VARIABLESN} {printf("es una variable: %s\n", yytext);}
{OPARITMETICOS} {printf("es un operador aritmetico:%s\n", yytext);}
{OPLOGICOS} {printf("es un operador logico: %s\n", yytext);}
{SIMBOLOS} {printf("es un simbolo: %s\n", yytext);}
%%
int main() {
    yyin = fopen("codigo.cpp", "r");
    if (!yyin) {
        printf("No se pudo abrir el archivo\n");
        return 1;
    }
    yylex();
    fclose(yyin);
    printf("Total de comentarios encontrados: %d\n", c);
    return 0;
}