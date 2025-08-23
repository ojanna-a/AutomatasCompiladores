import java.util.Scanner;

public class SeparaEnSilabas {
    public static void main(String[] args){

        Scanner scanner = new Scanner(System.in);
        System.out.println("ingrese un texto");

        String entrada = scanner.nextLine();
        
        String tokens[] = entrada.split("");

        int enteros = 0, palabras = 0, compuestas = 0;
        
        for(String token : tokens){
            if (token.matches("\\d+")) {
                enteros++;
            }else if(token.matches("[a-z A-Z]")) {
                palabras++;
            }else if(token.matches("[a-z A-Z 0-9]")){
                compuestas++;
                
            }
        }
        if (enteros > 0 && palabras == 0 && compuestas == 0){
            System.out.println(enteros + " - entero");

        }else if (palabras > 0 && enteros == 0 && compuestas == 0){
            System.out.println(palabras + " -palabras");
            
        }else if (compuestas > 0 && palabras == 0 && enteros == 0){
            System.out.println(compuestas + " -compuestas");

        } else {
            System.out.println(
                (enteros > 0 ? enteros + " -enteros, " : "") +
                (palabras > 0 ? palabras + " -palabras, " : "") +
                (compuestas > 0 ? compuestas + " compuestas, " : "") 
            );
        }

    }
}
