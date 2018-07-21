<%-- 
    Document   : Paramer
    Created on : Apr 9, 2018, 2:12:52 PM
    Author     : basavarajm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Paramer Page</title>
        <%!
            String vFirstName, vLastName;
        %>
        <%
            if (request.getParameter("bsubmit") != null)
            {
                vFirstName = request.getParameter("tbFirstName");
                vLastName = request.getParameter("tbSeconName");
                HttpSession sess = request.getSession(true);
                sess.setAttribute("vFirstName", vFirstName);
                sess.setAttribute("vLastName", vLastName);
            }
        %>
        <%
            if (request.getParameter("bsubmit1") != null) {
                HttpSession sess = request.getSession(false);
                vFirstName = sess.getAttribute("vFirstName").toString();
                vLastName = sess.getAttribute("vLastName").toString();
        %>       
        <jsp:forward page="ParamerOut.jsp">
            <jsp:param name="fn" value="<%=vFirstName%>"/>
            <jsp:param name="ln" value="<%=vLastName%>"/>
        </jsp:forward>
        <%
            }
        %>
    </head>
    <body>
        <img src="Wait.gif"/>
        <form action="">
            <button type="submit" name="bsubmit1" id="bsubmit1">Continue </button>
        </form>
    </body>
</html>
