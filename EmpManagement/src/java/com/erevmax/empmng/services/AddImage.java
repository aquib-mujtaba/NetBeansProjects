/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.erevmax.empmng.services;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author basavarajm
 */
public class AddImage extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            String id1;
            int row;
            String name;
            Part filePart;

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddImage</title>");
            out.println("</head>");
            out.println("<body>");
            InputStream inputStream = null; // input stream of the upload file
            id1 = request.getParameter("tId");

            name = request.getParameter("tName");
            // obtains the upload file part in this multipart request
            filePart = request.getPart("tImage");
            if (filePart != null) {
                // prints out some information for debugging
//            System.out.println(filePart.getName());
//            System.out.println(filePart.getSize());
//            System.out.println(filePart.getContentType());
                // obtains input stream of the upload file
                inputStream = filePart.getInputStream();
            }
            Connection conn = null;
            String message = null;

            try {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/resturant", "root", "admin");
                String sql = "insert into resturant.table2 ( ID,NAME,IMG) values (?,?, ?)";
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setString(1, id1);
                statement.setString(2, name);

                if (inputStream != null) {
                    // fetches input stream of the upload file for the blob column
                    statement.setBlob(3, inputStream);

                    // sends the statement to the database server
                    row = statement.executeUpdate();
                }
//            if (row > 0) {
//                message = "Table with "+id1+" added successfully";
//            }
                out.println("<h2>The table with id " + id1 + " is added in the database</h2>");

            } catch (SQLException ex) {
                ex.getMessage();
            }
            out.println("<h1>Servlet AddImage at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
