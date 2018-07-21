/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assig.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author basavarajm
 */
public class Logger extends HttpServlet {

    String guser, gpass;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String userName = "";
            String password = "";
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Logger</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>validating User </h1>");
            try {
                guser = request.getParameter("tbUsername");
                gpass = request.getParameter("tbPassword");
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/erevshema", "root", "admin");
                Statement st = con.createStatement();
                String str = "select username,password from erevshema.profiler where username='" + guser + "'";
                ResultSet rs = st.executeQuery(str);
                while (rs.next()) {
                    userName = rs.getString("username");
                    password = rs.getString("password");
                }
                if (gpass.equals(password) && guser.equals(userName)) {
                    out.print("USER is matched....");
                    String str1 = "SELECT * FROM erevshema.profiler where  username='" + guser + "'";
                    ResultSet rs1 = st.executeQuery(str1);
                    out.println("<h2>Data displayed Sucssefully...</h2>");
                    ResultSetMetaData rsm = rs1.getMetaData();
                    for (int i = 1; i <= rsm.getColumnCount(); i++) {
                        out.print("|" + "&nbsp;&nbsp;" + rsm.getColumnName(i) + "&nbsp;&nbsp;&nbsp;");
                    }
                    out.println("<br/>");
                    while (rs1.next()) {
                        for (int i = 1; i <= rsm.getColumnCount(); i++) {
                            out.print(rs1.getString(i) + "&nbsp;&nbsp;&nbsp;");
                        }
                        out.println("<br/>");
                    }
                    HttpSession ses = request.getSession(true);
                    out.println("<h2>Seesion id:-" + ses.getId() + "</h2>");
                    out.println("<h2>Seesion Created Time:-" + ses.getCreationTime() + "</h2>");
                } else {
                    out.print("Please enter correct userName And Password");
                }
            } catch (Exception e) {
            }
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

}
