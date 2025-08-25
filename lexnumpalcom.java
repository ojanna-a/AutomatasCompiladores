import java.util.Scanner;

public class lexnumpalcom {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        System.out.println("ingrese un texto");

        String entrada = scanner.nextLine();

        String tokens[] = entrada.split("\s+");

        int enteros = 0, palabras = 0, compuestas = 0, silabassinespacios = 0, silabasconespacios = 0;

        for (String token : tokens) {
            if (token.matches("[0-9]+")) {
                enteros++;
            } else if (token.matches("[a-z A-Z]+")) {
                palabras++;
            } else if (token.matches("[a-z A-Z 0-9]+")) {
                compuestas++;
            } else if (token.trim().isEmpty()) continue;
            }
        

        String Textosinespacios = entrada.replaceAll("\\s+", "");
        silabassinespacios = contarSilabas(Textosinespacios);


        String[] palabrasArray = entrada.split("\\s+"); //declaracion de arreglo de silabas con espacios

        for(String palabra : palabrasArray) {
            silabasconespacios += contarSilabas(palabra);
        }

        if (enteros > 0 && palabras == 0 && compuestas == 0) {
            System.out.println(enteros + " - entero");

        } else if (palabras > 0 && enteros == 0 && compuestas == 0) {
            System.out.println(palabras + " -palabras");

        } else if (compuestas > 0 && palabras == 0 && enteros == 0) {
            System.out.println(compuestas + " -compuestas");

        } else {
            System.out.println(
                    (enteros > 0 ? enteros + " -enteros, " : "") +
                            (palabras > 0 ? palabras + " -palabras, " : "") +
                            (compuestas > 0 ? compuestas + " compuestas, " : ""));
        }

        System.out.println("Total de caracteres sin espacios: " + silabassinespacios);
        System.out.println("Total de caracteres con espacios: " + silabasconespacios);

    }
    //funcion para contar silabas si espacios
    public static int contarSilabas(String palabra){
        String[] silabas = palabra.split("(?<=[aeiouAEIOU])");
        int count = 0;
        for (String s : silabas){
            if(!s.isEmpty())
             count++;
        }
        return count;
    }


    }

