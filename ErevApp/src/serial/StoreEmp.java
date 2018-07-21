/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serial;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

/**
 *
 * @author basavarajm
 */
public class StoreEmp {

    public static void main(String[] args) throws FileNotFoundException, IOException {
        Employee e1, e2, e3;
        e1 = new Employee();
        e2 = new Employee();
        e3 = new Employee();
        System.out.println("Setting the details of emp 1");
        e1.setEmployee();
        System.out.println("Setting the details of emp 1");
        e2.setEmployee();
        System.out.println("Setting the details of emp 1");
        e3.setEmployee();
        FileOutputStream fos = new FileOutputStream("C:\\Users\\basavarajm\\Documents\\NetBeansProjects\\ErevApp\\src\\serial\\EmpStore.txt");
        ObjectOutputStream oos = new ObjectOutputStream(fos);
        oos.writeObject(e1);
        oos.writeObject(e3);
        oos.writeObject(e2);
        System.out.println("All Employee has Been Saved Successfully");
        oos.flush();
        oos.close();

    }
}
