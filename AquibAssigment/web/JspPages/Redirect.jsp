<%-- 
    Document   : Redirect
    Created on : Apr 16, 2018, 12:55:23 PM
    Author     : basavarajm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page Page</title>
    </head>
    <%!
    String user;
    String pass;
    %>
    
    <%
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
    %>
    
    <body>
    <center><form name="lgnfrm" method="post" action="">
        <table border="1">
            <thead>
            <th colspan="2">Login Form</th>
            </thead>
            <tr>
                <td>User Name</td>
                <td><input type="text" name="fUserName" required=""></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="text" name="password" required=""></td>
            </tr>
             </table>
            <button type="submit" name="bsumit">Submit </button>
            <button type="reset" name="breset">Clear </button>
           <button type="button" name="close" onclick="window.close()">close </button>
        </form>
    </center>

</body>
</html>
