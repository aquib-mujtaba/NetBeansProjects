/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sespack;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author basavarajm
 */
public class StartSesseion extends HttpServlet {
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
            out.println("<title>Servlet StartSesseion</title>");            
            out.println("</head>");
            out.println("<body>");
              vUserName=request.getParameter("tbUsername");
            vPassword=request.getParameter("tbPassword");
            vDob=request.getParameter("tbDob");
            vGender=request.getParameter("tbgender");
            vGender=(vGender.equals("true"))?(vGender="Male"):(vGender="Female");
            out.println("<h1>Servlet StartSesseion at " + request.getContextPath() + "</h1>");
            out.println("<h2>creating Session... </h2>");
             HttpSession ses=request.getSession(true);
           out.println("<h2>Seesion id:-"+ses.getId()+ "</h2>");
           out.println("<h2>Seesion Created Time:-"+ses.getCreationTime()+ "</h2>");
           out.println("<h2>Storing the value"+"</h2>");
           ses.setAttribute("vUsername", vUserName);
           ses.setAttribute("vPassword", vPassword);
           ses.setAttribute("vDob", vDob);
           ses.setAttribute("vGender", vGender);
            out.println("<h2>Value Stored Sucssefully... </h2>");
            out.println("<a href='http://localhost:7070/ErevServ/Processer'>Go to the procees Page</a>");
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
