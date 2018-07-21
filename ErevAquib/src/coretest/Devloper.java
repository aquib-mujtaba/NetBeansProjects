/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coretest;

import java.io.Serializable;
import java.util.Scanner;

/**
 *
 * @author basavarajm
 */
public class Devloper extends Employee implements Staff,Ofiicer,Serializable{

    @Override
    public void inputDeatils() {
        System.out.println("Enter the deatils of your Employee");
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter the name: ");
        name=sc.next();
        System.out.println("Enter the Age: ");
        age=sc.nextInt();
        System.out.println("Enter the DESIGNATION: ");
       designation=sc.next();
        System.out.println("Enter the SAL: ");
        sal=sc.nextDouble();
    }

    @Override
    public void displayDetails() {
        System.out.println("Employeee Details...");
        System.out.println("Employeee name:-"+name);
        System.out.println("Employeee Age:-"+age);
        System.out.println("Employeee Degignation:-"+designation);
        System.out.println("Employeee SAL:-"+sal);
    }

  
    
    
}
