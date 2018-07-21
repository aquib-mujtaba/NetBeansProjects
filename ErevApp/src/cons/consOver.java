/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cons;


class Emp{

    public Emp(String name) {
        System.out.println("Emp of "+name +" is appointed");
    }
    public Emp() {
        System.out.println("Emp is appointed");
    }

}
class Clerk extends Emp{
public Clerk(){
   
    System.out.println("Clerk is oppinted");
}
public Clerk(String name){ 
    super(name);
    System.out.println("Clerk "+name +" is oppinted");
}
}
public class consOver {
    public static void main(String[] args) {
       Emp e=new Emp("Ram");
        System.out.println("===================");
      Clerk c=new Clerk("Clerk Name");
       
    }
    
}
