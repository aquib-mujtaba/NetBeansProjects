package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class setting_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            String empId,password,password1,passwordOld;    
        
 String e;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(5);
    _jspx_dependants.add("/common/js-css.jsp");
    _jspx_dependants.add("/common/menu.jsp");
    _jspx_dependants.add("/common/side-menu-emp.jsp");
    _jspx_dependants.add("/common/side-menu-admin.jsp");
    _jspx_dependants.add("/common/footer.jsp");
  }

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        ");
      out.write("<meta name=\"keywords\" content=\"Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("      Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false);\n");
      out.write("    function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!-- //custom-theme -->\n");
      out.write("<link href=\"resources/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link href=\"resources/css/component.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link href=\"resources/css/style_grid.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link href=\"resources/css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<!-- font-awesome-icons -->\n");
      out.write("<link href=\"resources/css/font-awesome.css\" rel=\"stylesheet\"> \n");
      out.write("<!-- //font-awesome-icons -->\n");
      out.write("<link href=\"//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        ");
      out.write('\n');
      out.write('\n');
if (session.getId().equals(session.getAttribute("sid"))) {
String name=(String)session.getAttribute("sname");

      out.write("\n");
      out.write("<div class=\"w3_agileits_top_nav\">\n");
      out.write("    <ul id=\"gn-menu\" class=\"gn-menu-main\">\n");
      out.write("        ");
if (session.getAttribute("userType").equals("Employee")) {
      out.write("\n");
      out.write("        ");
      out.write("<li class=\"gn-trigger\">\n");
      out.write("    <a class=\"gn-icon gn-icon-menu\"><i class=\"fa fa-bars\" aria-hidden=\"true\"></i><span>Menu</span></a>\n");
      out.write("    <nav class=\"gn-menu-wrapper\">\n");
      out.write("        <div class=\"gn-scroller scrollbar1\">\n");
      out.write("            <ul class=\"gn-menu agile_menu_drop\">\n");
      out.write("                <li><a href=\"adminHome.jsp\"> <i class=\"fa fa-tachometer\"></i> Dashboard</a></li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-cogs\" aria-hidden=\"true\"></i>Action<i class=\"fa fa-angle-down\" aria-hidden=\"true\"></i></a> \n");
      out.write("                    <ul class=\"gn-submenu\">\n");
      out.write("                        <!--<li class=\"mini_list_agile\"><a href=\"empLeaves.jsp\"><i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i>Leave Action</a></li>-->\n");
      out.write("                        <li class=\"mini_list_w3\"><a href=\"myLeaveForm.jsp\"> <i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i>Apply For Leave</a></li>\n");
      out.write("                        <!--<li class=\"mini_list_w3\"><a href=\"mySalary.jsp\"> <i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i>Add New Employee</a></li>-->\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"table.jsp\"> <i class=\"fa fa-table\" aria-hidden=\"true\"></i> View<i class=\"fa fa-angle-down\" aria-hidden=\"true\"></i></a>\n");
      out.write("                    <ul class=\"gn-submenu\">\n");
      out.write("                        <li class=\"mini_list_agile\"><a href=\"myAttendance.jsp\"><i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i> View Attendance</a></li>\n");
      out.write("                        <li class=\"mini_list_w3\"><a href=\"mySalary.jsp\"><i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i>View Salary Details</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>  <li>\n");
      out.write("                    <a href=\"#\"> <i class=\"fa fa-suitcase\" aria-hidden=\"true\"></i>More <i class=\"fa fa-angle-down\" aria-hidden=\"true\"></i></a> \n");
      out.write("                  \n");
      out.write("                </li>\n");
      out.write("                \n");
      out.write("            </ul>\n");
      out.write("        </div><!-- /gn-scroller -->\n");
      out.write("    </nav>\n");
      out.write("</li>\n");
      out.write("\n");
      out.write("        <li class=\"second logo\">\n");
      out.write("            \n");
      out.write("            <h1><a href=\"empHome.jsp\"><i class=\"fa\" aria-hidden=\"true\"></i>eRevMax</a></h1> </li>");
} else {
      out.write("\n");
      out.write("         ");
      out.write("<li class=\"gn-trigger\">\n");
      out.write("    <a class=\"gn-icon gn-icon-menu\"><i class=\"fa fa-bars\" aria-hidden=\"true\"></i><span>Menu</span></a>\n");
      out.write("    <nav class=\"gn-menu-wrapper\">\n");
      out.write("        <div class=\"gn-scroller scrollbar1\">\n");
      out.write("            <ul class=\"gn-menu agile_menu_drop\">\n");
      out.write("                <li><a href=\"adminHome.jsp\"> <i class=\"fa fa-tachometer\"></i> Dashboard</a></li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-cogs\" aria-hidden=\"true\"></i>Action<i class=\"fa fa-angle-down\" aria-hidden=\"true\"></i></a> \n");
      out.write("                    <ul class=\"gn-submenu\">\n");
      out.write("                        <li class=\"mini_list_agile\"><a href=\"empLeaves.jsp\"><i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i>Leave Action</a></li>\n");
      out.write("                        <li class=\"mini_list_w3\"><a href=\"myLeaveForm.jsp\"> <i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i>Apply For Leave</a></li>\n");
      out.write("                        <li class=\"mini_list_w3\"><a href=\"addEmp.jsp\"> <i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i>Add New Employee</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\"> <i class=\"fa fa-table\" aria-hidden=\"true\"></i> View<i class=\"fa fa-angle-down\" aria-hidden=\"true\"></i></a>\n");
      out.write("                    <ul class=\"gn-submenu\">\n");
      out.write("                        <li class=\"mini_list_agile\"><a href=\"AttendanceForm.jsp\"><i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i> View Attendance</a></li>\n");
      out.write("                        <li class=\"mini_list_w3\"><a href=\"salaryForm.jsp\"><i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i>View Salary Details</a></li>\n");
      out.write("                        <li class=\"mini_list_w3\"><a href=\"mySalary.jsp\"><i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i>View Your Salary Details</a></li>\n");
      out.write("                        <li class=\"mini_list_w3\"><a href=\"myAttendance.jsp\"><i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i>View Your Attendance Details</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\"> <i class=\"fa fa-suitcase\" aria-hidden=\"true\"></i>More <i class=\"fa fa-angle-down\" aria-hidden=\"true\"></i></a> \n");
      out.write("                  \n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div><!-- /gn-scroller -->\n");
      out.write("    </nav>\n");
      out.write("</li>\n");
      out.write("\n");
      out.write("              <li class=\"second logo\">\n");
      out.write("            <h1><a href=\"adminHome.jsp\"><i class=\"fa\" aria-hidden=\"true\"></i>eRevMax</a></h1>");
}
      out.write("\n");
      out.write("        </li>\n");
      out.write("    <!--</ul>-->\n");
      out.write("        <!--<ul>-->\n");
      out.write("<!--        <li class=\"dropdown second\">\n");
      out.write("            <a href=\"#\" class=\"dropdown-toggle\" type=\"button\" data-toggle=\"dropdown\">View\n");
      out.write("                <span class=\"caret\"></span>\n");
      out.write("            </a>\n");
      out.write("              <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\">View\n");
      out.write("                    <span class=\"caret\"></span>\n");
      out.write("                    </a>\n");
      out.write("            <ul class=\"dropdown-menu\">\n");
      out.write("                <li><a href=\"#\">View----- Attendance Of Employee</a></li>\n");
      out.write("                <li><a href=\"#\">View Salary Details Of Employee</a></li>\n");
      out.write("                <li><a href=\"#\">View Your Attendance</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </li>-->\n");
      out.write("        \n");
      out.write("<!--          <li class=\"dropdown profile_details_drop\">\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("                        <div class=\"profile_img\">\t\n");
      out.write("                            <span class=\"prfil-img\"><img src=\"resources/images/admin.jpg\" alt=\"\"> </span> \n");
      out.write("                        </div>\t\n");
      out.write("                    </a>\n");
      out.write("                    <ul class=\"dropdown-menu drp-mnu\">\n");
      out.write("                        <li> <a href=\"#\"><i class=\"fa fa-cog\"></i> Settings</a> </li> \n");
      out.write("                        <li> <a href=\"#\"><i class=\"fa fa-user\"></i> Profile</a> </li> \n");
      out.write("                        <li> <a href=\"#\"><i class=\"fa fa-sign-out\"></i> Logout</a> </li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>-->\n");
      out.write("        <!--<li class=\"second\">-->    \n");
      out.write("<!--            <a href=\"http://localhost:2018/EmpManagement/DoLogout\" >\n");
      out.write("                <span class=\"glyphicon glyphicon-log-out\"></span>Logout\n");
      out.write("            </a>-->\n");
      out.write("            <!--<a href=\"http://localhost:2018/EmpManagement/DoLogout\" role=\"button\">LogOut</a>-->\n");
      out.write("             <li class=\"dropdown profile_details_drop logo second \">\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("                        <!--<div class=\"profile_img\">-->\t\n");
      out.write("                            <!--<span class=\"prfil-img\"><img src=\"resources/images/admin.jpg\" alt=\"\"> </span>--> \n");
      out.write("                            <h1><i class=\"fa\" aria-hidden=\"true\"></i>");
      out.print(name);
      out.write("</h1>\n");
      out.write("                        <!--</div>-->\t\n");
      out.write("                    </a>\n");
      out.write("                    <ul class=\"dropdown-menu drp-mnu\">\n");
      out.write("                        <li> <a href=\"#\"><i class=\"fa fa-cog\"></i> Settings</a> </li> \n");
      out.write("                        <li> <a href=\"#\"><i class=\"fa fa-user\"></i> Profile</a> </li> \n");
      out.write("                        <li> <a href=\"http://localhost:2018/EmpManagement/DoLogout\"><i class=\"fa fa-sign-out\"></i> Logout</a> </li>\n");
      out.write("                    </ul>\n");
      out.write("               \n");
      out.write("        </li>\n");
      out.write("    </ul>\n");
      out.write("    ");
}
      out.write("\n");
      out.write("    \n");
      out.write("</div>");
      out.write("\n");
      out.write("        ");
      out.write("<!--copy rights start here-->\n");
      out.write("<style>\n");
      out.write(".footer {\n");
      out.write("   position: fixed;\n");
      out.write("   left: 0;\n");
      out.write("   bottom: 0;\n");
      out.write("   width: 100%;\n");
      out.write("   height: 7%;\n");
      out.write("   background-color: black;\n");
      out.write("   color: white;\n");
      out.write("   text-align: center;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<div class=\"footer\">\n");
      out.write("    \n");
      out.write("    <p>&COPY; 2017 eRevMax All Rights Reserved</p>\t\n");
      out.write("</div>\n");
      out.write("<!--copy rights end here-->");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            empId = (String) session.getAttribute("id");
            

            
      out.write("\n");
      out.write("        <title>Settings</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
if (!session.getId().equals(session.getAttribute("sid"))) {
                response.sendRedirect("404.jsp");
            }
      out.write("        \n");
      out.write("                \n");
      out.write("        <h2 class=\"w3_inner_tittle\">Hello ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h2>\n");
      out.write("        ");
if (request.getParameter("change") != null) {
      out.write("\n");
      out.write("                        ");
      out.write("\n");
      out.write("                        ");
 e = (String) request.getAttribute("success"); 
      out.write("\n");
      out.write("                        ");
 if (e.equals("suc")) { 
      out.write("\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"alert alert-success\" role=\"alert\">\n");
      out.write("                            <strong>Success! </strong>Password Successfully Changed.\n");
      out.write("                        </div>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("        <div class=\"inner_content\">                \n");
      out.write("            \n");
      out.write("                                    <div class=\"agile-validation agile_info_shadow\">                                        \n");
      out.write("                                            <div class=\"input-info\">\n");
      out.write("                                                <h3 class=\"w3_inner_tittle two\">Change Your Password :</h3>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-body form-body-info\">\n");
      out.write("                                                <form data-toggle=\"validator\" novalidate=\"true\" action=\"http://localhost:2018/EmpManagement/ChangePassword\" method=\"post\">\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <input type=\"password\" data-toggle=\"validator\" data-minlength=\"1\" class=\"form-control\" name=\"oldPassword\" id=\"oldPassword\" placeholder=\"oldPassword\" required=\"\">\n");
      out.write("                                                        <span class=\"help-block\">Minimum of 1 characters</span>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    \n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <input type=\"password\" data-toggle=\"validator\" data-minlength=\"1\" class=\"form-control\" name=\"inputPassword\" id=\"inputPassword\" placeholder=\"New Password\" required=\"\">\n");
      out.write("                                                        <span class=\"help-block\">Minimum of 1 characters</span>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <input type=\"password\" class=\"form-control\" id=\"inputPasswordConfirm\" data-match=\"#inputPassword\" data-match-error=\"Whoops, these don't match\" placeholder=\"Confirm password\" required=\"\">\n");
      out.write("                                                        <div class=\"help-block with-errors\"></div>\n");
      out.write("                                                    </div>                                            \n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <button type=\"submit\" name=\"change\" class=\"btn btn-primary\">Submit</button>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </form>\n");
      out.write("                                            </div>                                        \n");
      out.write("                                    </div>\n");
      out.write("            </div>\n");
      out.write("        <script type=\"text/javascript\" src=\"resources/js/jquery-2.1.4.min.js\"></script>\n");
      out.write("        <script src=\"resources/js/validator.min.js\"></script>\n");
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
