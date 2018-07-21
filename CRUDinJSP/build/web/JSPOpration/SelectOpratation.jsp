<%-- 
    Document   : SelectOpratation
    Created on : Apr 12, 2018, 11:10:16 AM
    Author     : basavarajm
--%>

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
        <title>Displaying Data</title>
    </head>
    <body>
        <%! 
        String pk;
        %>
        <%
            try {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/erevshema", "root", "admin");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from erevshema.profiler");
                ResultSetMetaData rsmd = rs.getMetaData();
        %>
    <center>
        <table border="1">
            <thead><th colspan="5">
                Displaying Data From DATA BASES</th>
            </thead>
            <tr><%
                for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                %>
                <th>
                    <%=rsmd.getColumnName(i)%>                    
                </th>
                <%}%>
                <th>Action</th>
            </tr>
            <tr><%
                rs.beforeFirst();
                while (rs.next()) {
                    for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                %>
                <th>
                    <%=rs.getString(i)%>                    
                </th>
                <%
                pk=rs.getString(1);
//               System.out.print(pk);
                    }%>
                <td>
                    <a href="http://localhost:7070/CRUDinJSP/JSPOpration/UpdateUser.jsp?userName=<%=pk%>"><button> Edit</button></a>
                    <a href='http://localhost:7070/CRUDinJSP/JSPOpration/Deleter.jsp?userName=<%=pk%>'><button> Delete</button> </a>
                </td>
            </tr>
            <%}%>
        </table>
        <center>
            <a href="http://localhost:7070/CRUDinJSP/JSPOpration/Register.jsp">click For Add New User Details</a>
        </center>
        <%
            } catch (SQLException e) {
                out.println(e.toString());
            }
        %>
    </center>
</body>
</html>
