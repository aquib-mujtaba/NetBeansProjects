/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inher;

/**
 *
 * @author basavarajm
 */
public class Child extends Parrent{

    @Override
    void clean() {
        System.out.println("Child is cleaning the garbage");
    }
    
}
