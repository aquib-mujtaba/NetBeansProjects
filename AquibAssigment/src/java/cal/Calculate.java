/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cal;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author basavarajm
 */
public class Calculate extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Integer a = Integer.parseInt(request.getParameter("fNumber"));
            Integer b = Integer.parseInt(request.getParameter("sNumber"));
            String op = request.getParameter("opration");
            if (op.equals("Add")) {
                int c = a + b;
                out.println("First Oprend is=" + a);
                out.println("Secound Oprend is=" + b);
                out.println("Oprater is=" + op);
                out.print("<h4>Additon Of the Numbers is=<h4>" + c);
                request.setAttribute("op", op);
                request.setAttribute("a", a);
                request.setAttribute("b", b);
                RequestDispatcher rd = request.getRequestDispatcher("/StoreData");
       rd.forward(request, response);
            }
            if (op.equals("sub")) {
                int c = a - b;
                out.println("First Oprend is=" + a);
                out.println("Secound Oprend is=" + b);
                out.println("Oprater is=" + op);
                out.println("<h4>Substraction Of the Numbers is=<h4>" + c);
            }
            if (op.equals("mult")) {
                int c = a * b;
                out.println("First Oprend is=" + a);
                out.println("Secound Oprend is=" + b);
                out.println("Oprater is=" + op);
                out.println("Multiplication Of the Numbers is=" + c);
            }
//            out.println("<html>");
//            out.println("<head>");
//            out.println("</head>");
//            out.println("<body>");
            String ht="<html> "+
            "<head>" + "</head>"+"<body>"+
            "<a href='http://localhost:7070/ErevWebAquib/StoreData>Save To Data Base </a>"+
         "</body>"+
            "</html>";
            out.print(ht);
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
