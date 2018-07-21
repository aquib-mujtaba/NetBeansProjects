/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package generics;

/**
 *
 * @author basavarajm
 */
public class PreGenric {

    public static void main(String[] args) {
        System.out.println("Creating the Vatriable");
        int a = 12;
        String s = "Hello";
        Shirt t = new Shirt();
        System.out.println("Creating the container");
        CacheInteger ci = new CacheInteger();
        CacheString cs = new CacheString();
        CacheShirt ct = new CacheShirt();
        System.out.println("Storing the variable in the container");
        ci.add(a);
        cs.add(s);
        ct.add(t);
        System.out.println("Dispalying the Value");
        System.out.println("Stored integrt is =" + ci.get());
        System.out.println("Stored Sting is =" + cs.get());
        System.out.println("Stored Shirt is =" + ct.get());
    }

}
