package org.apache.jsp.JspPages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Redirect_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    String user;
    String pass;
    
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
      out.write("        <title>Login Page Page</title>\n");
      out.write("    </head>\n");
      out.write("    ");
      out.write("\n");
      out.write("    \n");
      out.write("    ");

        if(request.getParameter("bsumit")!=null){
    user=request.getParameter("fUserName");
    pass=request.getParameter("password");
    HttpSession ses=request.getSession(true);
    ses.setAttribute("sUserName", user);
    ses.setAttribute("sPassword", pass);
    if(user.equals("admin")&& pass.equals("admin")){
    response.sendRedirect("http://localhost:7070/ErevWebAquib/JspPages/TempCon.jsp");
    
    }
    else if(user.equals("user")&& pass.equals("user")){
    response.sendRedirect("http://localhost:7070/ErevWebAquib/NumCal.html");
    }
    else{
     response.sendRedirect("http://localhost:7070/ErevWebAquib/JspPages/DividerError.jsp");
   
    }
        }
    
      out.write("\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("    <center><form name=\"lgnfrm\" method=\"post\" action=\"\">\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <thead>\n");
      out.write("            <th colspan=\"2\">Login Form</th>\n");
      out.write("            </thead>\n");
      out.write("            <tr>\n");
      out.write("                <td>User Name</td>\n");
      out.write("                <td><input type=\"text\" name=\"fUserName\" required=\"\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Password</td>\n");
      out.write("                <td><input type=\"text\" name=\"password\" required=\"\"></td>\n");
      out.write("            </tr>\n");
      out.write("             </table>\n");
      out.write("            <button type=\"submit\" name=\"bsumit\">Submit </button>\n");
      out.write("            <button type=\"reset\" name=\"breset\">Clear </button>\n");
      out.write("           <button type=\"button\" name=\"close\" onclick=\"window.close()\">close </button>\n");
      out.write("        </form>\n");
      out.write("    </center>\n");
      out.write("\n");
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
