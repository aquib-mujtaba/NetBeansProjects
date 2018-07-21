<%-- 
    Document   : ParamerOut
    Created on : Apr 9, 2018, 2:30:03 PM
    Author     : basavarajm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Output Page</title>
        <%!
        String vFirstName,vLastName;
        %>
        <%
        vFirstName=request.getParameter("fn");
        vLastName=request.getParameter("ln");
        %>
    </head>
    <body>
        <h1>First Name=<%=vFirstName %> </h1>
        <h1>Last Name=<%=vLastName %> </h1>
    </body>
</html>
