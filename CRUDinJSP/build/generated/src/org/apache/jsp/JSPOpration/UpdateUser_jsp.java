package org.apache.jsp.JSPOpration;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UpdateUser_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("  <body>\n");
      out.write("        <center>\n");
      out.write("        <form name=\"frmReg\" method=\"POST\" action=\"http://localhost:7070/ErevServ/Profiler\" > \n");
      out.write("            <div >\n");
      out.write("                <table border=\"1\" style=\"width: 500px;height: 600px\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr><th colspan=\"2\">Update FORM</th></tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr><td>UserName</td><td><input type=\"text\" name=\"tbUsername\" readonly=\"\"/></td></tr>\n");
      out.write("                        <tr><td>New Password</td><td><input type=\"password\" name=\"tbPassword\" required/></td></tr>\n");
      out.write("                        <tr><td>Confirm Confirm Password</td><td><input type=\"password\" name=\"tbConfirm\" required/></td></tr>\n");
      out.write("                        <tr><td>Change Date-Of-Birth</td><td><input type=\"date\" name=\"tbDob\" required/></td></tr>\n");
      out.write("                        <tr><td>Change Gender</td>\n");
      out.write("                            <td> Male<input type=\"radio\" name=\"tbgender\" value=\"true\"/>\n");
      out.write("                                Female<input type=\"radio\" name=\"tbgender\" value=\"false\"/></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td> \n");
      out.write("                                <button type=\"submit\" name=\"bsubmit\">Register</button>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <button type=\"reset\" name=\"breset\">Reset</button>\n");
      out.write("                                <button type=\"button\" name=\"bsubmit\">Close</button>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                    <tfoot>\n");
      out.write("             <tr>\n");
      out.write("                 <th colspan=\"2\">&COPY;ErevMax Corporation &trade;Limited &reg;</th>\n");
      out.write("             </tr>\n");
      out.write("                    </tfoot>\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        </center>\n");
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