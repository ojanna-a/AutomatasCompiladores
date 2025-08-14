/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Analizado;

import java.util.Scanner;
/**
 *
 * @author ojann
 */
public class Analizador {
    
    
    public static void main (String[] args){
        Scanner scanner = new Scanner(System.in);
        
        //String entrada = "";
        
        System.out.println("ingrese un texto");
        String entrada = scanner.nextLine();
        
        if(esNumero(entrada)){
            System.out.println("es un numero");
            
        }else if(esPalabra(entrada)){
        System.out.println("la entrada es una palabra");
    }else{
          System.out.println("la entrada es una mezcla de numeros y palabras");  
            }
    }
      
    //funcion esNumero
    public static boolean esNumero(String cadena){
        try{
            Integer.parseInt(cadena);
            return true;
        }catch (NumberFormatException e){
            return false;
        }
    }
   
   public static boolean esPalabra(String cadena) {
        return cadena.matches("[a-zA-Z]+");
   }
   
 

}

