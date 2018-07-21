/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coretest;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author basavarajm
 */
public class DisplyayDev {
    public static void main(String[] args) throws FileNotFoundException, IOException, ClassNotFoundException {
       
        
        FileInputStream fis = new FileInputStream("C:\\Users\\basavarajm\\Documents\\NetBeansProjects\\ErevAquib\\src\\coretest\\Devloper.db");
        ObjectInputStream ois = new ObjectInputStream(fis);
      ArrayList a1 = (ArrayList)ois.readObject();
        Iterator i1 = a1.iterator();
        while(i1.hasNext())
        {
            Devloper d1 = (Devloper)i1.next();
            d1.displayDetails();
        }
       
        ois.close();
        fis.close(); System.gc();
    }
    
}
