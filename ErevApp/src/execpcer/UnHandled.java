package execpcer;

import java.util.Scanner;

/**
 *
 * @author basavarajm
 */
public class UnHandled {

    public static void main(String[] args) {
        int[] x = null;
        Scanner sc = new Scanner(System.in);
        int size;
        char ans = 'Y';
        System.out.println("Enter the size of Array");
        size = sc.nextInt();
        System.out.println("Do you want to instantiate array ??(y/s)");
        if (ans == 'Y') {
            x = new int[size];
        }
        ans = sc.next().toUpperCase().charAt(0);
        System.out.println("Streating to enter elemrnt of the array");
        int count = 0;
        do {
            System.out.println("Enter element" + count);
            x[count++] = sc.nextInt();
            System.out.println("Do you Want to continue??(y/s)");
            ans = sc.next().toUpperCase().charAt(0);
        } while (ans == 'Y');
        x[2] = x[0] / x[1];
        System.out.println("The devison of " + x[0] + "by " + x[1] + "=" + x[2]);
    }

}
