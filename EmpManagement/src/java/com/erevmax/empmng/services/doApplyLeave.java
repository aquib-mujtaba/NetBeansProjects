package com.erevmax.empmng.services;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.time.Instant;

import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class doApplyLeave extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String empId = "";
        String comment, sql;
        String sd, ed;
        int u;
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        comment = request.getParameter("comment");
        sd = request.getParameter("startDate");
        ed = request.getParameter("endDate");
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet doApplyLeave</title>");
            out.println("</head>");
            out.println("<body>");
            try {
                //empId = session.getAttribute("id");                
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
                Statement st = con.createStatement();
                HttpSession session = request.getSession(false);
                empId = (String) session.getAttribute("id");
//                INSERT INTO `org`.`leavedetails`(`empId`,`startDate`,`endDate`,`comment`,`approveStatus`)VALUES('RT10101','2018-02-01','2018-03-01','aNY THING',0);
                
                
                
                
                
                
                sql = "insert into org.leavedetails (`empId`,`startDate`,`endDate`,`comment`) values('" + empId + "','" + sd + "','" + ed + "','" + comment + "')";
               st.executeUpdate(sql);
                request.setAttribute("success", "suc");
                request.getRequestDispatcher("myLeaveForm.jsp").forward(request, response);

            } catch (Exception e) {
                out.print(e.getMessage());
            }
            out.println("<h1>Hello</h1>");
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
