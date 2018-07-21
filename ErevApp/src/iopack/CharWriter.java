package iopack;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;

/**
 *
 * @author basavarajm
 */
public class CharWriter {

    public static void main(String[] args) throws FileNotFoundException, IOException {
        Scanner sc = new Scanner(System.in);
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String patner;
        char c;
        System.out.println("Enter full name of the file with full path which you want");
        patner = sc.next();
        File f1 = new File(patner);
        FileOutputStream fos = new FileOutputStream(f1);
        System.out.println("Plese satart entring the contents... press # to exit.....");
        c = (char) br.read();
        while (c != '#') {
            fos.write(c);
            c = (char)br.read();

        }
        fos.close();
        br.close();
        System.out.println("file saved Succsefully");
    }

}
