// Este es un comentario de una sola l�nea
/* 
   Este es un comentario de m�ltiples l�neas 
   que tambi�n debe contarse
*/

#include <iostream>
using namespace std;

int main() {
    // (a) Palabras reservadas: int, if, else, return, for, while, etc.
    int contador = 0;       
    float promedio = 0.0;    
    const int LIMITE = 10;   

    // (b) Palabras reservadas y (c) Comentarios
    for (int i = 0; i < LIMITE; i++) { 
        contador = contador + i;       
        promedio = contador / (i + 1);

        // (d) Variables y (e) Constantes num�ricas
        if (promedio > 5.0 && i != 0) { 
            cout << "Promedio mayor que 5.0" << endl;
        } else {
            cout << "Promedio menor o igual a 5.0" << endl;
        }
    }

    // (f) Operadores aritm�ticos adicionales
    contador *= 2;  
    contador -= 1;

    // (g) Operadores l�gicos
    bool resultado = (contador >= 10) || (promedio < 3.5);

    // (h) S�mbolos especiales: {}, (), [], ;, <<, >>
    int arreglo[5] = {1, 2, 3, 4, 5};
    for (int j = 0; j < 5; j++) {
        cout << "Elemento[" << j << "] = " << arreglo[j] << endl;
    }

    return 0;
}
