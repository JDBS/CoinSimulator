/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.cifpcm.util;

/**
 *
 * @author Jaime D. Brito Sánchez
 */
public class Converter {
    /* 
        Convierte de String a double (Safe). Si no es posible devuelve
        Double.MIN_VALUE
    */
    public static double stringToDouble(String value){
        double doubleValue=Double.MIN_VALUE;
        try{
            doubleValue=Double.parseDouble(value);
        }catch(NullPointerException | NumberFormatException e){
            
        }
        return doubleValue;
    }
}
