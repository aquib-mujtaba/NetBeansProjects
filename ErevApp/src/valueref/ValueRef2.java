/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package valueref;

/**
 *
 * @author basavarajm
 */
public class ValueRef2 {

    public static void main(String[] args) {

        int[] a = {12, 13};
        System.out.println("Before swapping");
        System.out.println("Value of a=" + a[0] + " Value of a=" + a[1]);
        System.out.println("Performing swaping....");
        swapper2(a);
        System.out.println("Swaping done.....");
        System.out.println("After swapping");
        System.out.println("Value of a=" + a[0] + " Value of a=" + a[1]);

    }

    private static void swapper2(int[] a) {
        a[0] = a[0] + a[1];
        a[1] = a[0] - a[1];
        a[0] = a[0] - a[1];
    }
}
