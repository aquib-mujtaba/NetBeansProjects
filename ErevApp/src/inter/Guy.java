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
public class Guy implements Dad, Mom, Boy {

    @Override
    public void run() 
    {
        System.out.println("Guy is running");
    }

    @Override
    public void walk()
    {
        System.out.println("Guy walking....");
    }

}
