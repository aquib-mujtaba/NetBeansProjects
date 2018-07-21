package stringer;
public class Immutable {
    public static void main(String[] args) {
        String x="ErevMAx";
        System.out.println("Before Modification :" +x);
       String y=x.concat("Compony Pvt Ltd.");
        System.out.println("After Modification : "+y);
        x+=" Compony";
        System.out.println("After modification :"+x);
    }
    
}
