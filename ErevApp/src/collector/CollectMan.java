package collector;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Scanner;

public class CollectMan {

    public static void main(String[] args) {
        LinkedList<String> li = new LinkedList<>();
        Scanner sc = new Scanner(System.in);
        String word;
        char ans;
        do {
            System.out.println("Enter your word");
            word = sc.next();
            System.out.println("Adding to the collection...");
            li.add(word);
            System.out.println(word + "Has been Add");
            System.out.println("Do you want to Continue????(y/n)");
            ans = sc.next().toUpperCase().charAt(0);

        } while (ans == 'Y');
        System.out.println("Collection is created ... now showing using a foeeach");
        for (String li1 : li) {
            System.out.println(li1);
        }
        System.out.println("After Sotrin the Array List");
        Collections.sort(li);
        Iterator it = li.iterator();
        while (it.hasNext()) {
            System.out.println(it.next());

        }
        System.out.println("Adding the element at the first Position");
        word = sc.next();
        li.addFirst(word);
        System.out.println("Element is added at the first");
        System.out.println("Adding the element at the Last Position");
        word = sc.next();
        li.addLast(word);
        System.out.println("Element is added at the Last");
        int po;
        System.out.println("Enter the index where you want to add");
        po = sc.nextInt();
        System.out.println("Enter the Word which you wan to add");
        word = sc.next();
        li.add(po, word);

        System.out.println("Searchin the elemnet...");
        System.out.println("Eneter the elemnet which you want to search...");
        word = sc.next();
        if (li.contains(word)) {
            System.out.println(word + " is found at the possition " + li.indexOf(word));

        } else {
            System.out.println("Item not present");
        }
        System.out.println("Removing the element from list");
        System.out.println("Enter the Element which you want to remove");
        word = sc.next();
        if (li.contains(word)) {
            li.remove(word);
            System.out.println("Element is removed successfully");
        } else {
            System.out.println("Item not fond Plese enter right Choise");
        }

        System.out.println("Finnay the element of Linked list=");
        for (String li1 : li) {
            System.out.println(li1);
        }
    }

}
