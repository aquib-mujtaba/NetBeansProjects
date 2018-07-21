package com.erevmax.empmng.services;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteLeaveRequest extends HttpServlet {

    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    Statement st2 = null;
    int n, diffDays;
    int lid;
    String q, q1, empid;
    String d;
    Date d1, d2;
    long tot;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            lid = Integer.parseInt(request.getParameter("lid"));
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");

            if (request.getParameter("bApprove") != null) {
                q = "update  org.leavedetails set approveStatus='1' where leaveId=" + lid;

                d = "select empId,startDate,endDate from org.leavedetails where leaveId=" + lid;
                st1 = con.createStatement();
                ResultSet rs = st1.executeQuery(d);
                while (rs.next()) {
                    empid = rs.getString(1);
                    d1 = rs.getDate(2);
                    d2 = rs.getDate(3);
                }
                //in milliseconds
                tot = d2.getTime() - d1.getTime();
                diffDays = (int) (tot / (24 * 60 * 60 * 1000));
                q1 = "update org.mastertb set noLeaves= noLeaves + " + diffDays + "  where empId='" + empid + "'";
                st2 = con.createStatement();
                int a = st2.executeUpdate(q1);
                if (a > 0) {
                    Statement st = con.createStatement();
                    String sql = "update org.saltb s inner join org.mastertb m on s.empId=m.empId set s.otherDeductions=if(m.noLeaves>2,m.noLeaves-2,0)*s.basic/30,s.total=s.basic-s.tds-s.pf+s.bonus-if(m.noLeaves>2,m.noLeaves-2,0)*s.basic/30;";
                    st.executeUpdate(sql);
                }
            } else if (request.getParameter("bReject") != null) {
                q = "update  org.leavedetails set approveStatus='0' where leaveId=" + lid;
            } else {
                q = "Delete from org.leavedetails where leaveId=" + lid;
            }
            st = con.createStatement();
            n = st.executeUpdate(q);
            request.getRequestDispatcher("empLeaves.jsp").forward(request, response);
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Delete Leave Form</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("</body>");
            out.println("</html>");
        } catch (SQLException ex) {
            Logger.getLogger(deleteLeaveRequest.class.getName()).log(Level.SEVERE, null, ex);
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
