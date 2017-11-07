/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.cifpcm.util;

import java.time.Month;
import java.util.Calendar;

/**
 *
 * @author Jaime D. Brito Sánchez
 */
public class CurrentDate {
    public static Calendar calendar=Calendar.getInstance();
    
    private enum Months{
        Enero,
        Febrero,
        Marzo,
        Abril,
        Mayo,
        Junio,
        Julio,
        Agosto,
        Septiembre,
        Octubre,
        Noviembre,
        Diciembre,
        COUNT
    } 
    
    public int getDay(){
        return this.calendar.get(Calendar.DAY_OF_MONTH);
    }
    

    
    private String monthToString(int month){
        final int MAX_VALUE=Months.COUNT.ordinal()-1;
        final int MIN_VALUE=0;
        
        if(month<=MAX_VALUE && month>=MIN_VALUE){
            String monthString=Month.values()[month].toString();
            return monthString;
        }
        
        return "Mes Desconocido";
    }
    public String getMonth(){
        int monthInt=this.calendar.get(Calendar.MONTH);
        String monthString=monthToString(monthInt);
        return monthString;
    }
    
    public String getHour(){
        String hour="";
        hour+=Integer.toString(this.calendar.get(Calendar.HOUR_OF_DAY));
        hour+=":";
        hour+=Integer.toString(this.calendar.get(Calendar.MINUTE));
        return hour;
    }
    
    public int getYear(){
        return this.calendar.get(Calendar.YEAR);
    }
}
