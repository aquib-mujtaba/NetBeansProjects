/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package propspace;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

/**
 *
 * @author basavarajm
 */
public class PropClass {

    public static void main(String[] args) throws FileNotFoundException, IOException {
        Properties pt = new Properties();
        FileInputStream fis = new FileInputStream("C:\\Users\\basavarajm\\Documents\\NetBeansProjects\\ErevApp\\src\\propspace\\ServerInfo.properties");
        pt.load(fis);
        System.out.println("HostWeb =" + pt.getProperty("hostweb"));
        System.out.println("UserName =" + pt.getProperty("username"));
        System.out.println("Password =" + pt.getProperty("password"));
        System.out.println("usermode =" + pt.getProperty("usermode"));
        System.out.println("Applying defaul value....");
        System.out.println("Unknown1 =" + pt.getProperty("unknown1", "No key exits"));
        System.out.println("Unknown1 =" + pt.getProperty("unknown2", "No key exits"));
        System.out.println("Unknown1 =" + pt.getProperty("unknown3", "No key exits"));
        pt.setProperty("name", "aquib");
        pt.setProperty("addd", "blr");
        System.out.println("usermode =" + pt.getProperty("name"));
        System.out.println("usermode =" + pt.getProperty("addd"));
        fis.close();
        pt.clear();

    }
}
