package serial;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;

public class RetreveEmployee {

    public static void main(String[] args) throws FileNotFoundException, IOException, ClassNotFoundException {
        Employee e1, e2, e3;
        FileInputStream fis = new FileInputStream("C:\\Users\\basavarajm\\Documents\\NetBeansProjects\\ErevApp\\src\\serial\\EmpStore.txt");
        ObjectInputStream ois = new ObjectInputStream(fis);
        e2 = (Employee) ois.readObject();
        e1 = (Employee) ois.readObject();
        e3 = (Employee) ois.readObject();
        System.out.println("getting the details if employye of e1");
        e1.getEmp();
        System.out.println("getting the details if employye of e2");
        e2.getEmp();
        System.out.println("getting the details if employye of e3");
        e3.getEmp();
        ois.close();
    }

}
