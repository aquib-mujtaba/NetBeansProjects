/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package visitor;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
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
public class Visiter extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.
        File f1=new File("d:\\Storage\\visitor.txt");
        if (!f1.exists()) {
             vCounter = 0;
        }
        else{
            FileReader fr=null;
            try {
                fr = new FileReader(f1);
                BufferedReader br=new BufferedReader(fr);
                vCounter=Integer.parseInt(br.readLine());
                br.close();
               
            } catch (FileNotFoundException ex) {
                Logger.getLogger(Visiter.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IOException ex) {
                Logger.getLogger(Visiter.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    fr.close();
                } catch (IOException ex) {
                    Logger.getLogger(Visiter.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
       
    }

    @Override
    public void destroy() {
        FileWriter fw=null;
        try {
            super.destroy();
            File f1=new File("d:\\Storage\\visitor.txt");
            fw = new FileWriter(f1);
            BufferedWriter bw=new BufferedWriter(fw);
            bw.write(String.valueOf(vCounter));
            bw.flush();
            bw.close();
           
        } catch (IOException ex) {
            Logger.getLogger(Visiter.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                fw.close();
            } catch (IOException ex) {
                Logger.getLogger(Visiter.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
    
    } 

    int vCounter;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Visiter</title>");
            out.println("</head>");
            out.println("<body>");
            vCounter++;
            out.println("<h1>You are Visitor Number:" +vCounter + "</h1>");
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
