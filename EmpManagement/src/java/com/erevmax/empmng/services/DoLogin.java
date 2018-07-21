/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.erevmax.empmng.services;

import com.sun.jmx.snmp.daemon.SnmpInformRequest;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author basavarajm
 */
public class DoLogin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String empId = "", fUserName, fPassword, vUserName = "", vPassword = "", sql, name = "", vUserType = "";
        boolean vStatus = false;
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
//            System.out.println("Inside Try Block");
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet doLogin</title>");
            out.println("</head>");
            out.println("<body>");
            try {
                fUserName = request.getParameter("name");
                fPassword = request.getParameter("password");
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
                Statement st = con.createStatement();
                sql = "select * from logintb where UserName='" + fUserName + "'";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    vUserName = rs.getString("UserName");
                    vPassword = rs.getString("Password");
                    vStatus = rs.getBoolean("loginStatus");
                    vUserType = rs.getString("userType");
                }
                if (vUserName.equals(fUserName) && vPassword.equals(fPassword) && vStatus == true) {
                    HttpSession session = request.getSession(true);
                    sql = "select ename,empId from emptb where email='" + vUserName + "'";
                    rs = st.executeQuery(sql);
                    while (rs.next()) {
                        name = rs.getString("ename");
                        empId = rs.getString("empId");
                    }
                    session.setAttribute("sname", name);
                    session.setAttribute("id", empId);
                    session.setAttribute("sid", session.getId());
                    session.setAttribute("userType",vUserType);
                    insertInTime(empId);
//                    sql = "INSERT INTO `org`.`attendencetb`(`empId`,`inTime`,`outTime`,`attendenceStatus`)VALUES('" + empId + "','" + session.getCreationTime() + "','" + session.getCreationTime() + "','1')";
//                    st.executeUpdate(sql);
                    if (vUserType.equals("Employee")) {

                        request.getRequestDispatcher("empHome.jsp").forward(request, response);
                    } else {
                        request.getRequestDispatcher("adminHome.jsp").forward(request, response);
                    }
                } else {
                   request .setAttribute("error", "er");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }

            } catch (Exception e) {
                out.print(e.getMessage());
            }

            out.println("<h1>Servlet doLogin at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void insertInTime(String empId) {
        try {
            Date date, d = null;
            String s;
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
            Statement st = con.createStatement();
            date = new Date();
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
            String maxDate = "select max(inTime) from org.attendencetb where empId='" + empId + "'";
            ResultSet rs = st.executeQuery(maxDate);
            while (rs.next()) {
                d = rs.getDate(1);
            }
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String sysDate = sdf.format(date);
            if (d == null) {
                s ="";
            } else {
                s = d.toString();
            }
            if (!s.equals(sysDate)) {
                String sql = "INSERT INTO `org`.`attendencetb`(`empId`,`inTime`,`attendenceStatus`)VALUES('" + empId + "','" + dateFormat.format(date) + "','1')";
                String cont = "UPDATE org.mastertb SET totalAttendance=totalAttendance+1 WHERE empId='" + empId + "'";
                st.executeUpdate(sql);
                st.executeUpdate(cont);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DoLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
