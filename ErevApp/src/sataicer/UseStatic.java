package sataicer;

import static sataicer.StatClass.statExecute;

public class UseStatic 
{
    public static void main(String[] args) 
    {
        StatClass sc = new StatClass();
       statExecute();
        System.out.println("==============");
       sc.statExecute();
    }
}
