
import com.erevmax.empmng.dao.EmployeeInf;
import com.erevmax.empmng.dao.LoginInf;
import com.erevmax.empmng.dao.MasterTableInf;
import com.erevmax.empmng.daoimpl.EmployeeImpl;
import com.erevmax.empmng.daoimpl.LoginImpl;
import com.erevmax.empmng.daoimpl.MasterTableImpl;
import com.erevmax.empmng.domain.Employee;
import com.erevmax.empmng.domain.Login;
import com.erevmax.empmng.domain.MasterTable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author basavarajm
 */
public class Test {
    public static void main(String[] args) {
//       Employee a=new Employee("AQ201", "Mujatba", 12, "Aq@mf", "HR401", 125.20, "125");
//        EmployeeInf e=new EmployeeImpl();
//        e.save(a);
//        Login l=new Login("mujtaba@gmail","1252","Employee", "1");
//        LoginInf li=new LoginImpl();
//        li.save(l);
MasterTable mst=new MasterTable("LO301140", 0, 0);
        MasterTableInf msti=new MasterTableImpl();
        msti.save(mst);
    }
    
}
