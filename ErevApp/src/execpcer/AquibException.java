
package execpcer;

/**
 *
 * @author basavarajm
 */
public class AquibException extends Exception{
    public AquibException(){
        System.out.println("Aquib Exception");}

    @Override
    public String toString() {
      
return "First number should be multiple of 10 or 5";
    }

    @Override
    public String getMessage() {
        return "Its not multople of 10";
    }
    
    
    
}
