package org.apache.jsp.FirstServer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.ResultSetMetaData;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class DataDisplayer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("        <title>Displaying DataBase Data</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            try {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/erevshema", "root", "admin");
                Statement st = con.createStatement();
                String str = "SELECT * FROM erevshema.profiler";
                ResultSet rs = st.executeQuery(str);
                out.println("<h2>Data displayed Sucssefully...</h2>");
                ResultSetMetaData rsm = rs.getMetaData();
        
      out.write("\n");
      out.write("        <table border=\"4\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    ");

                        for (int i = 1; i <= rsm.getColumnCount(); i++) {
                    
      out.write("\n");
      out.write("                    <th>\n");
      out.write("                        ");
      out.print(rsm.getColumnName(i));
      out.write("\n");
      out.write("                    </th>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            ");

                rs.beforeFirst();
            
      out.write("\n");
      out.write("            <tbody>\n");
      out.write("                ");

                    while (rs.next()) {
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    ");

                        for (int i = 1; i <=rsm.getColumnCount(); i++) {
                    
      out.write("\n");
      out.write("                    <td>");
      out.print(rs.getString(i));
      out.write("</td>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                ");

                    }
                    rs.close();
                    st.close();
                    con.close();
            }
            catch(SQLException ex){
            out.println(ex.toString());
            }
                
      out.write("\n");
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("            <tfoot>\n");
      out.write("               <tr>\n");
      out.write("             <th colspan=\"4\">&COPY; ErevMax Corporation &trade;Limited &reg;</th>\n");
      out.write("                        </tr>\n");
      out.write("            </tfoot>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
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
