/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datetime;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author basavarajm
 */
public class Instant {

    public static void main(String[] args) throws ParseException {
        Scanner sc = new Scanner(System.in);
        SimpleDateFormat sdf = new SimpleDateFormat("d-M-y");
        Date dt = new Date();
        Date dt1 = new Date();
        System.out.println("Current Date is=" + dt);
        System.out.println("Enter Date (dd-mm-yyyy)");
        String ds = sc.next();
        System.out.println("Enter  2nd Date (dd-mm-yyyy)");
        String ds2 = sc.next();
        dt = sdf.parse(ds);
        dt1 = sdf.parse(ds2);
        System.out.println("User Define date is= " + dt);
        System.out.println("User Define date is= " + dt1);
        Calendar c1=Calendar.getInstance();
        Calendar c2=Calendar.getInstance();
    c1.set(dt1.getYear(), dt1.getMonth(),dt1.getDate());
    c2.set(dt.getYear(), dt.getMonth(),dt.getDate());
        System.out.println("Duration beetween is="+(c2.getTimeInMillis()-c1.getTimeInMillis())+"Millisecound");
    }
    

}
