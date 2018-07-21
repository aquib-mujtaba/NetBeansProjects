/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iopack;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 *
 * @author basavarajm
 */
public class CharReader {
    public static void main(String[] args) throws IOException {
        String pather;
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Enter the filename with full path");
   pather=br.readLine();
   File f1=new File(pather);
        if (!f1.exists()) {
            System.out.println("Coud not find file..."); 
        return;
        }
        FileInputStream fis=new FileInputStream(f1);
        
        int c=fis.read();
        while (c!=-1) { 
            System.out.print((char)c);
            c=fis.read();
        }
 fis.close();
 br.close();
        System.out.println("file reading done sucssefully");
    }
}
