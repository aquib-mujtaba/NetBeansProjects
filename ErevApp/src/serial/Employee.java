package serial;

import java.io.Serializable;
import java.util.Scanner;

public class Employee implements Serializable {

    String name;
    double sal;
    int age;

    public Employee() {
        System.out.println("Employeee is Appointed....");
    }

    public void sayEmp() {
        System.out.println("Hey im employeee ....i work For Organization");
    }

    @Override
    protected void finalize() throws Throwable {
        System.out.println("Employee is retired....");
    }

    void setEmployee() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter name..");
        name = sc.nextLine();
        System.out.println("Enter Age..");
        age = sc.nextInt();
        System.out.println("Enter sal..");
        sal = sc.nextDouble();

    }

    void getEmp() {

        System.out.println("Name..." + name);
        System.out.println("Age...." + age);
        System.out.println("Salary..." + sal);
    }
}
