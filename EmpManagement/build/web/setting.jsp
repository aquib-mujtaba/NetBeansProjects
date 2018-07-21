<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%@include file="common/js-css.jsp" %>


        <%!
            String empId, password, password1, passwordOld;
        %>
        <%
            empId = (String) session.getAttribute("id");

        %>
        <title>Settings</title>
    </head>
    <body>   <%@include file="common/menu.jsp" %>
        <div class="agile-validation agile_info_shadow">  

            <div class="clearfix"></div>
            <div class="inner_content">                
                <div class="agile-validation agile_info_shadow">  
                    <%if (!session.getId().equals(session.getAttribute("sid"))) {
                            response.sendRedirect("404.jsp");
                        }%>        

                    <%if (request.getParameter("change") != null) {%>
                    <%! String e;%>
                    <% e = (String) request.getAttribute("success"); %>
                    <% if (e.equals("suc")) { %>
                    <br>
                    <div class="alert alert-success" role="alert">
                        <strong>Success! </strong>Password Successfully Changed.
                    </div>
                    <%} else {%>
                    <div class="alert alert-danger" role="alert">
                        <strong>Wrong! </strong>Password not Changed.
                    </div>
                    <%}
                        }%>

                    <div class="input-info">
                        <h3 class="w3_inner_tittle two"> ${sname} Change Your Password :</h3>
                    </div>
                    <div class="form-body form-body-info">
                        <form data-toggle="validator" novalidate="true" action="http://localhost:2018/EmpManagement/ChangePassword" method="post">
                            <div class="form-group">
                                <input type="password" data-toggle="validator" data-minlength="1" class="form-control" name="oldPassword" id="oldPassword" placeholder="oldPassword" required="">
                                <span class="help-block">Minimum of 1 characters</span>
                            </div>

                            <div class="form-group">
                                <input type="password" data-toggle="validator" data-minlength="1" class="form-control" name="inputPassword" id="inputPassword" placeholder="New Password" required="">
                                <span class="help-block">Minimum of 1 characters</span>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm password" required="">
                                <div class="help-block with-errors"></div>
                            </div>                                            
                            <div class="form-group">
                                <button type="submit" name="change" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>                                        
                </div>
            </div>
        </div> <%@include file="common/footer.jsp" %>
        <script type="text/javascript" src="resources/js/jquery-2.1.4.min.js"></script>
        <script src="resources/js/modernizr.custom.js"></script>
        <script src="resources/js/jquery.nicescroll.js"></script>
        <script src="resources/js/scripts.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap-3.1.1.min.js"></script>
        <script src="resources/js/classie.js"></script>
        <script src="resources/js/gnmenu.js"></script>
        <script src="resources/js/validator.min.js"></script>
    </body>
</html>
