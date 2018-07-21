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
public class InnerClass {

    public static void main(String[] args) {
        Car c1 = new Car();
        System.out.println("Current running engine status of the car is....");
        c1.displayStaus();
        c1.startEng();
        System.out.println("After calling satrt method engine status of the car is....");
        c1.displayStaus();
    }
}
