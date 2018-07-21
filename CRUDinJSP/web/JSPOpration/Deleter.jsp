<%-- 
    Document   : Deleter
    Created on : Apr 13, 2018, 12:42:50 PM
    Author     : basavarajm
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            String vPK;
            String sql = "delete from erevshema.profiler where userName=?";
        %>
        <%
            try {
                vPK = request.getParameter("userName");
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/erevshema", "root", "admin");
//                Statement st = con.createStatement();
                PreparedStatement st = con.prepareStatement(sql);
                st.setString(1, vPK);
                int a = st.executeUpdate();
//                int a = st.executeUpdate("delete from erevshema.profiler where userName="+vPK);
//                ResultSetMetaData rsmd = rs.getMetaData();

        %><center>
        <h3>Data Deleted Successfully Whose User Name was <%=vPK%> </h3>
        <h3>Total Row Effected Is <%=a%> </h3>
        <a href="http://localhost:7070/CRUDinJSP/JSPOpration/SelectOpratation.jsp"> Click Here For List Of data</a></center>
        <%} catch (SQLException e) {%>

    <h2><%=e.toString()%></h2>
    <%
        }
    %>

</body>
</html>
