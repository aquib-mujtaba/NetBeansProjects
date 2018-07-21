 package collector;

import java.util.Collection;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;

public class HashTabler {
    public static void main(String[] args) {
        Hashtable<Integer,String> ht;
        ht=new Hashtable();
        ht.put(10, "Aquib");
        ht.put(10, "Aaquib");
        ht.put(11, "Rammm");
        ht.put(12, "ramuj");
        ht.put(11, "aafff");
        ht.put(13, "Aquib");
        ht.put(14, "Rajj");
        ht.put(16, "Aquib");
        ht.put(17, "Aquib");
        ht.put(120, "Aquib");
        System.out.println("Printing the key...");
        Enumeration<Integer> en=ht.keys();
        while (en.hasMoreElements()) {            
            System.out.println("roll number are =="+en.nextElement());
        }
        Collection<String> ci=ht.values();
        Iterator i=ci.iterator();
        while (i.hasNext()) {
            System.out.println("Nmae is ;"+i.next().toString());            
        }
        System.out.println("Reinstanceating...");
        en=ht.keys();
        i=ci.iterator();
        while ((en.hasMoreElements())&&  (i.hasNext())) { 
            System.out.println("Roll is;"+en.nextElement() +" Name is;=" +i.next());
            
        }
    }
    
}
