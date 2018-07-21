package basic;

/**
 *
 * @author basavarajm
 */
public class CommArgs {

    public static void main(String[] args) {
        if (args.length != 3) {
            System.out.println("Invalid Number of Arg...");
            return;
        }
        int a, b, c;
        char op;
        a = Integer.parseInt(args[0]);
        b = Integer.parseInt(args[2]);
        op = args[1].charAt(0);
        switch (op) {
            case '+':
                c = a + b;
                break;
            case '-':
                c = a - b;
                break;
            case '*':
                c = a * b;
                break;
            case '/':
                c = a / b;
                break;
            case '%':
                c = a % b;
                break;
            default:
                System.out.println("Enter correcxt input");
                return;
        }
        System.out.println(a+ " " +op +" " +b  +" Result is= " + c);

    }
}
