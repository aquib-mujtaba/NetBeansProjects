package com.erevmax.empmng.daoimpl;

import com.erevmax.empmng.domain.Login;
import com.erevmax.empmng.dao.LoginInf;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginImpl implements LoginInf {

    String sql;
    Connection con;
    PreparedStatement st;

    @Override
    public void save(Login a) {
        try {
            sql = "INSERT INTO org.logintb(UserName,Password,userType,loginStatus) VALUES (?,?,?,?)";
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
            st = con.prepareStatement(sql);
            st.setString(1, a.getUserName());
            st.setString(2, a.getPassword());
            st.setString(3, a.getUserType());
            st.setString(4, a.getLoginStatus());
           int r= st.executeUpdate();
            System.out.println("total row updated is "+r);
        } catch (SQLException ex) {
            Logger.getLogger(LoginImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public List<Login> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Login findById(String userName) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Login> findProperty(String propertyName, Object objValue) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int delete(Login a) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public boolean deleteById(String userName) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
