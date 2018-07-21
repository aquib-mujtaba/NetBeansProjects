package org.apache.jsp.FirstServer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import beanpack.TempConBean;

public final class TempConBean_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Temperature Conversion</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"TempConBean.jsp\" method=\"post\">\n");
      out.write("            <table border=\"4\">\n");
      out.write("                <tr>\n");
      out.write("                    <td> Source Temp</td>\n");
      out.write("\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"tbSourceTemp\" id=\"tbSourceTem\" required>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Temp Conversion</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"tbCon\" id=\"tbCon\" required>\n");
      out.write("                            <option value=\"\">--------select-----</option>\n");
      out.write("                            <option value=\"c2f\">Celsius to Fahrenheit </option>\n");
      out.write("                            <option value=\"f2c\">Fahrenheit To Celsius</option>\n");
      out.write("                        </select>\n");
      out.write("\n");
      out.write("                    </td>\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>Target Temp..</td>\n");
      out.write("                    ");

                        if (request.getParameter("vConvert") != null) {
                            String vTemp, vConFac;
                            vTemp = request.getParameter("tbSourceTemp");
                            vConFac = request.getParameter("tbCon");

                    
      out.write("\n");
      out.write("                    ");
      beanpack.TempConBean temper = null;
      synchronized (_jspx_page_context) {
        temper = (beanpack.TempConBean) _jspx_page_context.getAttribute("temper", PageContext.PAGE_SCOPE);
        if (temper == null){
          temper = new beanpack.TempConBean();
          _jspx_page_context.setAttribute("temper", temper, PageContext.PAGE_SCOPE);
          out.write("\n");
          out.write("                        ");
          org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("temper"), "temp",
vTemp);
          out.write("\n");
          out.write("                        ");
          org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("temper"), "confac",
vConFac);
          out.write("\n");
          out.write("                        ");

                            }
                        
          out.write("\n");
          out.write("                        <td>\n");
          out.write("                            ");
          out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((beanpack.TempConBean)_jspx_page_context.findAttribute("temper")).getTemp())));
          out.write("\n");
          out.write("                        </td>\n");
          out.write("                    ");
        }
      }
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td> \n");
      out.write("                        <button type=\"submit\" name=\"vConvert\">Convert</button>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <button type=\"reset\" name=\"breset\">Reset</button>\n");
      out.write("                        <button type=\"button\" name=\"bsubmit\">Close</button>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
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
