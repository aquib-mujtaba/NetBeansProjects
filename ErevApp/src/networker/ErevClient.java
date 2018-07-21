/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package networker;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.Scanner;

/**
 *
 * @author basavarajm
 */
public class ErevClient {

    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        Socket s = new Socket("localhost", 7888);
        DataOutputStream dos = new DataOutputStream(s.getOutputStream());
        String x;
        System.out.println("Enter messege the messese to be sent to the server");
        x = sc.nextLine();
        System.out.println("Sending messege");
        dos.writeUTF(x);
        System.out.println("Messege sent ....");
        dos.flush();
        dos.close();
        sc.close();

    }

}
