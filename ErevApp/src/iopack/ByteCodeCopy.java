package iopack;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Scanner;

public class ByteCodeCopy {

    public static void main(String[] args) throws FileNotFoundException, IOException {
        String vSource, vDest;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the binory source file with full path");
        vSource = sc.next();
        System.out.println("Enter the binory destination file with full path");
        vDest = sc.next();
        File fsource = new File(vSource);
        if (!fsource.exists()) {
            System.out.println("sorce binory file doed not found");
            return;
        }
        try {
            FileInputStream fis = new FileInputStream(fsource);
            FileOutputStream fous = new FileOutputStream(vDest);
            System.out.println("Total number of byte to be copy...:" + fis.available());
            System.out.println("Press enter to continue....");
            System.in.read();
            int x = fis.read();
            System.out.println("File copy satarded....");
            int count = 0;
            while (x != -1) {
                fous.write(x);
                count++;
                if (count % 100 == 0) {
                    System.out.println(">> ");
                    count = 0;
                }
            }
            System.out.println("Sucsessfully....copied");
            fis.close();
            fous.close();

        }
        catch(IOException e){
            e.printStackTrace();
        }}
    }
