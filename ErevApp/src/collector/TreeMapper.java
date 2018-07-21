/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package collector;

import java.util.Map;
import java.util.TreeMap;

/**
 *
 * @author basavarajm
 */
public class TreeMapper {

    public static void main(String[] args) {
        TreeMap<Integer, String> tm = new TreeMap();
        tm.put(40, "Copie");
        tm.put(10, "Computer");
        tm.put(60, "Scale");
        tm.put(20, "pen");
        tm.put(20, "pen");
        tm.put(30, "Pencile");

        tm.put(50, "Book");

        for (Map.Entry<Integer, String> a : tm.entrySet()) {
            System.out.println("key is =" + a.getKey() + " Value is " + a.getValue());

        }

    }

}
