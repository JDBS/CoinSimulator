/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.cifpcm.enumerations;

import java.util.Random;

/**
 *
 * @author Jaime D. Brito Sánchez
 */
public enum Side{
    face,   //Valor que indica cara (Corresponde a 0)
    cross,  //Valor que indica cruz (Corresponde a 1)
    COUNT   //COUNT debe de ser siempre el último valor
    ;
    
    //Convierte un string en un lado de una moneda
    public static Side stringToSide(String side){
        Side sideEnum=null;
        
        if(side==null || side.equals(""))
            return null;
        
        if(side.equals(Side.cross.toString()))
            sideEnum=Side.cross;
        
        if(side.equals(Side.face.toString()))
            sideEnum=Side.face;
        
        return sideEnum;
    }
    
    //Crea un lado a partir de un número entero
    public static Side createSide(int side){
        Side sideEnum=null;
        if(checkRange(side)){
            sideEnum=Side.values()[side];
        }
        return sideEnum;
    }
    
    //Obtiene una cara aleatoria de la moneda
    public static Side getRandomSide(){
        final int SIDES_COUNT=Side.COUNT.ordinal();
        Random rnd = new Random();
        
        Side side=Side.values()[rnd.nextInt(SIDES_COUNT)];
        return side;
    }
    
    //Chequea que el ordinal de la cara esté dentro del rango permitido
    public static boolean checkRange(int side){
        final int MAX_VALUE=Side.COUNT.ordinal()-1;
        final int MIN_VALUE=0;
        
        return (side<=MAX_VALUE && side>=MIN_VALUE);
    }
}
