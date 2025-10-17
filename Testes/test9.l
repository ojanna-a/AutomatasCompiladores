%option noyywrap
%{
    #include <stdio.h>
  
%}

BLOOM_ANALIZAR analizar|comparar|examinar|distinguir|identificar|relacionar|diferenciar|clasificar|inferir|categorizar|descomponer|contrastar|investigar|organizar|detectar
ADJETIVO amable|bello|brillante|creativo|dedicado|eficiente|elegante|encantador|fuerte|generoso|honesto|inteligente|paciente|positivo|responsable|sabio|sincero|talentoso|valiente
CONJUNCION "ya que"|"así que"|y|e|ni|o|u|pero|aunque|sino|porque|pues|mientras|cuando|si
PREPOSICION a|ante|bajo|con|contra|de|desde|en|entre|hacia|hasta|para|por|según|sin|sobre|tras
PRONOMBRE yo|tú|él|ella|nosotros|ustedes|ellos|mío|tuyo|suyo|nuestro|vuestro|este|esa|aquellos|alguien|algo|nadie|ninguno|todos|varios|qué|quién|cuál|cuánto|que|quien|cuyo|donde

%%
{BLOOM_ANALIZAR} {printf("analizador: %s\n", yytext);}
{ADJETIVO} {printf("adjetivo : %s\n", yytext);}
{CONJUNCION} {printf("conjuncion: %s\n", yytext);}
{PREPOSICION} {printf("es una presposicion: %s\n", yytext);}
{PRONOMBRE} {printf("es un pronombre: %s\n", yytext);}

%%

int main(void)
{
    yylex();
    return 0;
}