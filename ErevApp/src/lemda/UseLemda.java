package lemda;

import java.util.Scanner;

public class UseLemda {
 public static int doOpt(int a, int b, Methodop c) {

        return c.opration(a, b);
    }

    public static void main(String[] args) {
        Methodop adder = (int a,int b)->a+b;
        Methodop sub =(a,b)->a-b;
        Methodop mult = (int a,int b)->{return (a*b);};
        Methodop div = (a,b)->{return (a/b);};
        int a, b;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter First number");
        a = sc.nextInt();
        System.out.println("Enter Secound number");
        b = sc.nextInt();
        System.out.println("Substration =" + doOpt(a, b, sub));
        System.out.println("Addition =" + doOpt(a, b, adder));
        System.out.println("Multiplecation =" + doOpt(a, b, mult));
        System.out.println("Division =" + doOpt(a, b, div));
        Greating g = (msg)->System.out.println("hello -"+msg);
        g.greeet("Good  AfterNoon");

    }
}
