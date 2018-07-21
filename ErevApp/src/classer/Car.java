 
package classer;

/**
 *
 * @author basavarajm
 */
public class Car {
    boolean status=false;
    Enginne eg=new Enginne();
    void  displayStaus(){
        System.out.println("The Running Status of the car is: "+status);
    }
    void startEng(){
    eg.start();
            
    }

    private class Enginne {
        private void start() {
            status=true;
        }
    }
}
