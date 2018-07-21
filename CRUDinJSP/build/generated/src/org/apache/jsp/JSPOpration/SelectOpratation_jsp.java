package org.apache.jsp.JSPOpration;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.ResultSetMetaData;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class SelectOpratation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 
        String pk;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Displaying Data</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            try {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/erevshema", "root", "admin");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from erevshema.profiler");
                ResultSetMetaData rsmd = rs.getMetaData();
        
      out.write("\n");
      out.write("    <center>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <thead><th colspan=\"5\">\n");
      out.write("                Displaying Data From DATA BASES</th>\n");
      out.write("            </thead>\n");
      out.write("            <tr>");

                for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                
      out.write("\n");
      out.write("                <th>\n");
      out.write("                    ");
      out.print(rsmd.getColumnName(i));
      out.write("                    \n");
      out.write("                </th>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("                <th>Action</th>\n");
      out.write("            </tr>\n");
      out.write("            <tr>");

                rs.beforeFirst();
                while (rs.next()) {
                    for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                
      out.write("\n");
      out.write("                <th>\n");
      out.write("                    ");
      out.print(rs.getString(i));
      out.write("                    \n");
      out.write("                </th>\n");
      out.write("                ");

                pk=rs.getString(1);
//               System.out.print(pk);
                    }
      out.write("\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"http://localhost:7070/CRUDinJSP/JSPOpration/UpdateUser.jsp?userName=");
      out.print(pk);
      out.write("\"><button> Edit</button></a>\n");
      out.write("                    <a href='http://localhost:7070/CRUDinJSP/JSPOpration/Deleter.jsp?userName=");
      out.print(pk);
      out.write("'><button> Delete</button> </a>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            ");
}
      out.write("\n");
      out.write("        </table>\n");
      out.write("        <center>\n");
      out.write("            <a href=\"http://localhost:7070/CRUDinJSP/JSPOpration/Register.jsp\">click For Add New User Details</a>\n");
      out.write("        </center>\n");
      out.write("        ");

            } catch (SQLException e) {
                out.println(e.toString());
            }
        
      out.write("\n");
      out.write("    </center>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
