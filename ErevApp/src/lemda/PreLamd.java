/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lemda;

import java.util.Scanner;

/**
 *
 * @author basavarajm
 */
public class PreLamd {

    public static int doOpt(int a, int b, Methodop c) {

        return c.opration(a, b);
    }

    public static void main(String[] args) {
        Methodop adder = new MethodAdder();
        Methodop sub = new MethSub();
        Methodop mult = new MathMult();
        Methodop div = new MathDiv();
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
        Greating g = new GeeetMessege();
        g.greeet("Good  AfterNoon");

    }

}
