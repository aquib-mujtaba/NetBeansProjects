package com.erevmax.empmng.daoimpl;

import com.erevmax.empmng.domain.Employee;
import com.erevmax.empmng.dao.EmployeeInf;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177215)
public class EmployeeImpl implements EmployeeInf {

    Connection con = null;
    PreparedStatement st = null;
    InputStream inputStream = null;
    String q;
    int r;

    @Override
    public void save(Employee a) {
        try {

            String sql = "INSERT INTO org.emptb(empId,ename,age,email,deptId,phone) VALUES (?,?,?,?,?,?)";
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
            st = con.prepareStatement(sql);
            st.setString(1, a.getEmpId());
            st.setString(2, a.getName());
            st.setInt(3, a.getAge());
            st.setString(4, a.getUserName());
            st.setString(5, a.getDeptId());
            st.setString(6, a.getPhone());
            r = st.executeUpdate();
            System.out.println("Total row Updated" + r);
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Employee> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Employee findById(String empId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Employee> findProperty(String propertyName, Object objValue) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int delete(Employee a) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public boolean deleteById(String empId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
