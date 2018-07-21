/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projpack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author basavarajm
 */
public class Profiler extends HttpServlet {
String vUserName,vPassword,vDob,vGender;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Registration Details</title>");            
            out.println("</head>");
            out.println("<body>");
            vUserName=request.getParameter("tbUsername");
            vPassword=request.getParameter("tbPassword");
            vDob=request.getParameter("tbDob");
            vGender=request.getParameter("tbgender");
            vGender=(vGender.equals("true"))?(vGender="Male"):(vGender="Female");
            out.println("<h1>Your info is..</h1>");
            out.println("<h2>UserName Or Email--- &nbsp;&nbsp;&nbsp;&nbsp; "+vUserName +"</h2>");
            out.println("<h2>Password&nbsp;&nbsp;&nbsp;---&nbsp;&nbsp;&nbsp;&nbsp; "+vPassword +"</h2>");
            out.println("<h2>Date Of Bitrh Or Email ---&nbsp;"+vDob+"</h2>");
            out.println("<h2>Gender  ---&nbsp;"+vGender +"</h2>");
            out.println("<h2 Style='colour:orange'>Saving the data wthin databse.... </h2>");
            try{
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                
                
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erevshema","root","admin");
                Statement st=con.createStatement();
                String q="INSERT INTO erevshema.profiler(userName,password,dob,gender) values('"+vUserName+"','"+vPassword+"','"+vDob+"','"+vGender+"')";
          int ra=st.executeUpdate(q);
          out.println("<h2>Toyal Row effecterd is="+ra+"</h2>");
            }catch(SQLException e){
            
                Logger.getLogger(Profiler.class.getName()).log(Level.SEVERE, null, e);
            }
            
            out.println("<h2 Style='colour:green'> Data saved Sucseefully.... </h2>");
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
