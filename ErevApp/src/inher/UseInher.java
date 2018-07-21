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
public class UseInher {
    public static void main(String[] args) {
        Parrent p1=new Parrent();
        Child c1=new Child();
        p1.clean();
        c1.clean();
        System.out.println("================");
        Parrent p2=new Child();
        p2.clean();
        Child c2=(Child)new Parrent();
        c2.clean();
    }
    
}
