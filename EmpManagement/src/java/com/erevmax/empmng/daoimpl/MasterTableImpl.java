package com.erevmax.empmng.daoimpl;

import com.erevmax.empmng.domain.MasterTable;
import com.erevmax.empmng.dao.MasterTableInf;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MasterTableImpl implements MasterTableInf
{
  String sql;
    Connection con;
    PreparedStatement st;
  @Override
    public void save(MasterTable a) {
try {
            sql = "INSERT INTO `org`.`mastertb`(empId,totalAttendance,noLeaves) VALUES (?,?,?)";
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
            st = con.prepareStatement(sql);
            st.setString(1, a.getEmpId());
            st.setInt(2, a.getTotalAttendence());
            st.setInt(3, a.getNoLeaves());
           int r= st.executeUpdate();
            System.out.println("total row updated is "+r);
        } catch (SQLException ex) {
            Logger.getLogger(LoginImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<MasterTable> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public MasterTable findById(String empId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<MasterTable> findProperty(String propertyName, Object objValue) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int delete(MasterTable a) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public boolean deleteById(String empId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
 
    
}
