package com.erevmax.empmng.daoimpl;

import com.erevmax.empmng.domain.Salary;
import com.erevmax.empmng.dao.SalaryInf;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SalaryImpl implements SalaryInf
{
  String sql;
    Connection con;
    PreparedStatement st;

    public void save(Salary s) {
      try {
          sql = "INSERT INTO org.saltb(empId,basic) VALUES (?,?)";
          DriverManager.registerDriver(new com.mysql.jdbc.Driver());
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
          st = con.prepareStatement(sql);
          st.setString(1, s.getEmpId());
          st.setDouble(2, s.getBasic());
          st.executeUpdate();
          
      } catch (SQLException ex) {
          Logger.getLogger(SalaryImpl.class.getName()).log(Level.SEVERE, null, ex);
      }
           


    }

    public List<Salary> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Salary findById(String empId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Salary> findProperty(String propertyName, Object objValue) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int delete(Salary a) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public boolean deleteById(String empId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
 
    
    
    
}
