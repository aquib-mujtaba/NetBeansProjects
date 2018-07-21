package finar;

/**
 *
 * @author basavarajm
 */
public class FinalizedClass {
    static int objCount=0;
    String name;

    public FinalizedClass(String name) {
        this.name = name;
        objCount++;
        System.out.println("object created is "+name);
    }

    @Override
    protected void finalize() throws Throwable {
        System.out.println("the object is to destroy is: "+name);
        objCount--;
        System.out.println("Number of object remaining is "+objCount);
            }
    
}
