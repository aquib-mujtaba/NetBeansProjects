<%-- 
    Document   : ErrorPagger
    Created on : Apr 9, 2018, 12:51:36 PM
    Author     : basavarajm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Error Page </title>
    </head>
    <body style="background-color: red;color: white;font-weight: bold;font-size: 250%">
        <h3>
            <sup style="text-decoration: overline">ErevMax Technology</sup>
            <sup style="text-decoration: underline">Say</sup>
            Due To the Following Reason An Error Has Occur 
        </h3>
        <ul style="list-style: square">
            <li>The Error Type  is:<span><%=exception.getClass()%> </span> </li>
            <li>The Error Message is:<span><%=exception.getMessage()%> </span> </li>
            <li>The  Details of error is:<span><%=exception.toString()%> </span> </li>
        </ul>
      
    </body>
</html>
