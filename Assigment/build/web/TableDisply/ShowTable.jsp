<%-- 
    Document   : ShowTable
    Created on : Apr 6, 2018, 4:34:00 PM
    Author     : basavarajm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Showing The Multiplication</title>
         <%!
            int n1=0,res=0;
            %>
        <%
                n1=Integer.parseInt(request.getParameter("tbNumber1"));
   
                out.println("<h1>Multiplication Table Of "+n1 +"</h1>");
                if(request.getParameter("tbSubmit")!=null)
                {
                    for(int i=1;i<=10;i++)
                    {
                    res=i*n1;
                    out.println("<h2>"+i+"*"+n1+" = "+res+"</h2>");
                    }
                }
                %>
    </head>
    <body>
       
    </body>
</html>
