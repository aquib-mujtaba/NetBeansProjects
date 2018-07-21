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
public class CacheAll <T>{
    T x;

    void add(T x) {
        this.x = x;
        System.out.println("Item stord sucssefully");
    }

    T get() {
        return x;
    }
    
    
}
