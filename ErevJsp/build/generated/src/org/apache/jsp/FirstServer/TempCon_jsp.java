package org.apache.jsp.FirstServer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class TempCon_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            double calTemp = 0.0, farTemp = 0.0;
            char confac = 'A';
        
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Register Your Details Here</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            if (request.getParameter("bsubmit") != null) {
                if (request.getParameter("rbTemp") != null) {
                    confac = request.getParameter("rbTemp").charAt(0);
                }
               
                calTemp = Double.parseDouble(request.getParameter("tbCelsious"));
                farTemp = Double.parseDouble(request.getParameter("tbFahrenheit"));
                switch (confac) {
                    case 'C':
                        farTemp = calTemp * 1.8 + 32.0;
                        break;
                    case 'F':
                        calTemp = (farTemp - 32.0) / 1.8;
                        break;
                    default:
                        out.println("<h2 style='color:red;background-color:black'>Please select An opraton First</h2>");
                        break;
                }
            }
        
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <form name=\"frmTemp\" method=\"POST\" action=\"\" > \n");
      out.write("            <div >\n");
      out.write("                <table border=\"1\" style=\"width: 500px;height: 600px\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr><th colspan=\"2\">Temp Conversion</th></tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr><td>Celsius</td><td><input type=\"number\"  name=\"tbCelsious\" min=\"-1000\" max=\"1000\" value=\"");
      out.print(calTemp);
      out.write("\" /></td></tr>\n");
      out.write("                        <tr><td>Fahrenheit</td><td><input type=\"number\"  name=\"tbFahrenheit\" min=\"-1000\" max=\"1000\" value=\"");
      out.print(farTemp);
      out.write("\" /></td></tr>\n");
      out.write("                        <tr><td>Conversion Operation</td>\n");
      out.write("                            <td> Celsius to Fahrenheit<input type=\"radio\" name=\"rbTemp\" value=\"Ctf\"/>\n");
      out.write("                                Fahrenheit to   Celsius<input type=\"radio\" name=\"rbTemp\" value=\"Ftc\"/></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td> \n");
      out.write("                                <button type=\"submit\" name=\"bsubmit\">Convert</button>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <button type=\"reset\" name=\"breset\">Clear</button>\n");
      out.write("                                <button type=\"button\" name=\"bClose\" onclick=\"window.close()\">Close</button>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                    <tfoot>\n");
      out.write("                        <tr>\n");
      out.write("                            <th colspan=\"2\">&COPY; ErevMax Corporation &trade;Limited &reg;</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </tfoot>\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
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
