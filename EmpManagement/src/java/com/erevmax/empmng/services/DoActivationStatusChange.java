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

public class DoActivationStatusChange extends HttpServlet {
    String userName,sql,p;
    int u;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DoActivationStatusChange</title>");            
            out.println("</head>");
            out.println("<body>");
            try {
                //empId = session.getAttribute("id");                
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
                Statement st = con.createStatement();    
                
            if(request.getParameter("active")!=null){
                userName=request.getParameter("active");
                out.println("<h1>Servlet DoActivationStatusChange at " + userName + "</h1>");
                sql = "update org.logintb set loginStatus=0 where UserName='"+userName+"'";
            }
            else if(request.getParameter("deactive")!=null)
            {
                userName=request.getParameter("deactive");
                out.println(userName);
                sql = "update org.logintb set loginStatus=1 where UserName='"+userName+"'";
            }
            u = st.executeUpdate(sql);
            p=Integer.toString(u);
            out.println("update status: "+u);
            out.println("</body>");
            out.println("</html>");
             } catch (Exception e) {
                out.print(e.getMessage());
             }
            
        } finally {
            request .setAttribute("U", p);
            request.getRequestDispatcher("adminHome.jsp").forward(request, response);
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
