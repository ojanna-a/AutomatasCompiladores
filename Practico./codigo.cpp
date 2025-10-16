// Este es un comentario de una sola línea
/* 
   Este es un comentario de múltiples líneas 
   que también debe contarse
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

        // (d) Variables y (e) Constantes numéricas
        if (promedio > 5.0 && i != 0) { 
            cout << "Promedio mayor que 5.0" << endl;
        } else {
            cout << "Promedio menor o igual a 5.0" << endl;
        }
    }

    // (f) Operadores aritméticos adicionales
    contador *= 2;  
    contador -= 1;

    // (g) Operadores lógicos
    bool resultado = (contador >= 10) || (promedio < 3.5);

    // (h) Símbolos especiales: {}, (), [], ;, <<, >>
    int arreglo[5] = {1, 2, 3, 4, 5};
    for (int j = 0; j < 5; j++) {
        cout << "Elemento[" << j << "] = " << arreglo[j] << endl;
    }

    return 0;
}
