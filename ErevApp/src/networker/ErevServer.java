package networker;

import java.io.DataInputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class ErevServer {

    public static void main(String[] args) throws IOException {
        ServerSocket sc = new ServerSocket(7888);
        System.out.println("Waing for clint connection......");
        Socket s=sc.accept();
        System.out.println("Clint connected......");
        DataInputStream dis=new DataInputStream(s.getInputStream());
        String st=dis.readUTF();
        System.out.println("Client says :"+st);
        dis.close();
        
    }
}
