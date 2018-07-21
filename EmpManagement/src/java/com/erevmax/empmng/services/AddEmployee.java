/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.erevmax.empmng.services;

import com.erevmax.empmng.dao.EmployeeInf;
import com.erevmax.empmng.dao.LoginInf;
import com.erevmax.empmng.dao.MasterTableInf;
import com.erevmax.empmng.dao.SalaryInf;
import com.erevmax.empmng.daoimpl.EmployeeImpl;
import com.erevmax.empmng.daoimpl.LoginImpl;
import com.erevmax.empmng.daoimpl.MasterTableImpl;
import com.erevmax.empmng.daoimpl.SalaryImpl;
import com.erevmax.empmng.domain.Employee;
import com.erevmax.empmng.domain.Login;
import com.erevmax.empmng.domain.MasterTable;
import com.erevmax.empmng.domain.Salary;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author basavarajm
 */
public class AddEmployee extends HttpServlet {

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

            String vName = request.getParameter("EmployeeName");
            String vEmail = request.getParameter("EmailAddress");
            String vPhone = request.getParameter("phoneNumber");
            String vPassword = request.getParameter("inputPassword");
            String vPassword2 = request.getParameter("inputPassword2");
            String vDept = request.getParameter("dept");
            String vEmpId = request.getParameter("EmpId");
            int vAge = Integer.parseInt(request.getParameter("age"));
            double vSal = Double.parseDouble(request.getParameter("BasicSalary"));
            String vUserType = request.getParameter("empType");
            String vStatus = request.getParameter("status");

            if (!vStatus.equals("dsb")) {
                vStatus = "1";
            } else {
                vStatus = "0";
            }
//            String vPhoto = request.getParameter("photo");
            Employee a = new Employee(vEmpId, vName, vAge, vEmail, vDept, vPhone);
            Login l = new Login(vEmail, vPassword, vUserType, vStatus);
            EmployeeInf e = new EmployeeImpl();
            e.save(a);
            LoginInf li = new LoginImpl();
            li.save(l);
            Salary s = new Salary(vEmpId, vSal);
            SalaryInf si = new SalaryImpl();
            si.save(s);
            MasterTable mt = new MasterTable(vEmpId, 0, 0);
            MasterTableInf mst = new MasterTableImpl();
            mst.save(mt);
            request.setAttribute("add", "EmpAdd");
            request.getRequestDispatcher("adminHome.jsp").forward(request, response);
        } catch (IOException e) {
            request.setAttribute("add", "empErr");
            request.getRequestDispatcher("adminHome.jsp").forward(request, response);
            e.getMessage();
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
