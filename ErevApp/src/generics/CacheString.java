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
public class CacheString {

    String x;

    void add(String x) {
        this.x = x;
        System.out.println("String stord sucssefully");
    }

    String get() {
        return x;
    }

}
