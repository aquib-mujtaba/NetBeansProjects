package com.erevmax.empmng.services;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ChangePassword extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String empId,password,password1;            
            Connection con = null;
            Statement st = null;
            int u;
            String sql;
             
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ChangePassword</title>");            
            out.println("</head>");
            out.println("<body>");
            try {
                //empId = session.getAttribute("id");                
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
                st = con.createStatement();
                HttpSession session = request.getSession(false);
                empId = (String) session.getAttribute("id");
                password=request.getParameter("oldPassword");
                password1=request.getParameter("inputPassword");
//                INSERT INTO `org`.`leavedetails`(`empId`,`startDate`,`endDate`,`comment`,`approveStatus`)VALUES('RT10101','2018-02-01','2018-03-01','aNY THING',0);
                sql = "update org.logintb set Password='"+password1+"' where UserName =(select email from org.emptb where empId='"+empId+"') and Password='"+password+"'";
                int a=st.executeUpdate(sql);
                if (a>0) {
                   request.setAttribute("success", "suc");
                request.getRequestDispatcher("setting.jsp").forward(request, response); 
                }
                else{
                request.setAttribute("success", "err");
                request.getRequestDispatcher("setting.jsp").forward(request, response);}

            } catch (Exception e) {
                out.print(e.getMessage());
            }
            out.println("<h1>Servlet ChangePassword at " + request.getContextPath() + "</h1>");
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
