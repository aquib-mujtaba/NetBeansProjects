 
package collector;

import java.util.HashSet;
import java.util.Set;

public class Setter {
    public static void main(String[] args) {
        Set<String> s1=new HashSet<String>();
        s1.add("apple");
        s1.add("mango");
        s1.add("pineapple");
        s1.add("apple");
        s1.add("Banana");
        System.out.println("The HasSet object are"+s1);
    }
    
}
