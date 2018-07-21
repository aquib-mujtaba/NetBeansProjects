/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inter;

/**
 *
 * @author basavarajm
 */
public class UseInter {
    public static void main(String[] args) {
        Guy g1=new Guy();
        g1.run();
        g1.walk();
        System.out.println("Age of guy is "+Dad.age);
        System.out.println("Age of guy is "+Mom.age);
        System.out.println("Age of guy is "+Boy.age);
       Dad d1=new Guy();
        System.out.println("Age Of d1 Dad=" +d1.age);
        Mom m1=new Guy();
        System.out.println("Age m1 Mom=" +m1.age);
        Boy b1=new Guy();
        System.out.println("Age b1 Boy=" +b1.age);
    }
}
