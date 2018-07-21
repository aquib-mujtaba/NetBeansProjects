/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coretest;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

/**
 *
 * @author basavarajm
 */
public class EntryDev {

    public static void main(String[] args) throws FileNotFoundException, IOException {
        Scanner sc = new Scanner(System.in);

        ArrayList al = new ArrayList();
        char ans;
        do {
            Devloper e = new Devloper();
            e.inputDeatils();
            boolean f = al.add(e);
            if (f) {
                System.out.println("Employye is added..");
            } else {
                System.out.println("Not Addede");
            }
            System.out.println("Do you want to Continue????(y/n)");
            ans = sc.next().toUpperCase().charAt(0);
        } while (ans == 'Y');
        System.out.println("Employeee......");
        FileOutputStream fos=new  FileOutputStream("C:\\Users\\basavarajm\\Documents\\NetBeansProjects\\ErevAquib\\src\\coretest\\Devloper.db");
        ObjectOutputStream oos = new ObjectOutputStream(fos);
        oos.writeObject(al);
        System.out.println("All Employee has Been Saved Successfully");
        oos.close();
    }

}
