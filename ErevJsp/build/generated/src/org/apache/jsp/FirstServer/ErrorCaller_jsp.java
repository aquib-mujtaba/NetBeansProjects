package org.apache.jsp.FirstServer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ErrorCaller_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 
        int x=0,y=0,r=0;
        
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
      			"ErrorPagger.jsp", true, 8192, true);
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>This Page going to call Error Page</title>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
 
        if(request.getParameter("bsubmit")!=null)
        {
        x=Integer.parseInt(request.getParameter("tbFirstNumber"));
        y=Integer.parseInt(request.getParameter("tbSeconNumber"));
      r=x/y;
        }
        
      out.write("\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("  <body>\n");
      out.write("        <center>\n");
      out.write("        <form name=\"frmReg\" method=\"POST\" action=\"\" > \n");
      out.write("            <div >\n");
      out.write("                <table border=\"1\" style=\"width: 500px;height: 600px\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr><th colspan=\"2\">Calculation FORM</th></tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr><td>First Number</td><td><input type=\"text\" name=\"tbFirstNumber\" required/></td></tr>\n");
      out.write("                        <tr><td>Second Number</td><td><input type=\"text\" name=\"tbSeconNumber\" required/></td></tr>\n");
      out.write("                        <tr><td>Result</td><td><input type=\"text\" name=\"tbConfirm\" value=\"");
      out.print(r);
      out.write("\" readonly/></td></tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td> \n");
      out.write("                                <button type=\"submit\" name=\"bsubmit\"> Divide </button>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <button type=\"reset\" name=\"bReset\">Clear</button>\n");
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
