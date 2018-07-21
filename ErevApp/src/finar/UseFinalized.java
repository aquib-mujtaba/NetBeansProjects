package finar;

public class UseFinalized {

    public static void main(String[] args) {
        System.out.println("Before Deferncing the object");
        FinalizedClass fc1, fc2, fc3;
        fc1 = new FinalizedClass("fc1");
        fc2 = new FinalizedClass("fc2");
        fc3 = new FinalizedClass("fc3");
        System.out.println("Defering the object");
        fc1 = null;
        fc2 = null;
        fc3 = null;
        System.out.println("Grbage Collection........");
        System.gc();
    }

}
