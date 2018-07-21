/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classer;

/**
 *
 * @author basavarajm
 */
public class VarArgs {
    public static void main(String[] args) {
        System.out.println("the result is....."+adder(12,3));
        System.out.println("the result is....."+adder(12,5,10));
        System.out.println("the result is....."+adder(12,3,15,7,3));
        System.out.println("the result is....."+adder(12,5,7));
        System.out.println("the result is....."+adder(12,3));
        
    }

    private static int adder(int ...x) {
        int result=0;

        for (int y : x) {
            result+=y;
        }
        return result;
    }
    
}
