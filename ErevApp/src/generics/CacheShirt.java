
package generics;

/**
 *
 * @author basavarajm
 */
public class CacheShirt {

    Shirt x;

    void add(Shirt x) {
        this.x = x;
        System.out.println("Shirt stord sucssefully");
    }

    Shirt get() {
        return x;
    }
    
}
