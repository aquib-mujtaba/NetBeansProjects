/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coretest;

import java.io.Serializable;

/**
 *
 * @author basavarajm
 */
public abstract class Employee implements Serializable{

    String name;
    int age;
    String designation;
    double sal;

    public Employee() {
        System.out.println("Employee is Appointed...");
    }

    @Override
    protected void finalize() throws Throwable {
        System.out.println("Employee is retired.....");
    }

}
