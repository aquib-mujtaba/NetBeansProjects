<%-- 
    Document   : DataDisplayer
    Created on : Apr 11, 2018, 2:02:23 PM
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
        <title>Displaying DataBase Data</title>
    </head>
    <body>
        <%
            try {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/erevshema", "root", "admin");
                Statement st = con.createStatement();
                String str = "SELECT * FROM erevshema.profiler";
                ResultSet rs = st.executeQuery(str);
                out.println("<h2>Data displayed Sucssefully...</h2>");
                ResultSetMetaData rsm = rs.getMetaData();
        %>
        <table border="4">
            <thead>
                <tr>
                    <%
                        for (int i = 1; i <= rsm.getColumnCount(); i++) {
                    %>
                    <th>
                        <%=rsm.getColumnName(i)%>
                    </th>
                    <%
                        }
                    %>
                </tr>
            </thead>
            <%
                rs.beforeFirst();
            %>
            <tbody>
                <%
                    while (rs.next()) {
                %>
                <tr>
                    <%
                        for (int i = 1; i <=rsm.getColumnCount(); i++) {
                    %>
                    <td><%=rs.getString(i)%></td>
                    <%
                        }
                    %>
                </tr>
                <%
                    }
                    rs.close();
                    st.close();
                    con.close();
            }
            catch(SQLException ex){
            out.println(ex.toString());
            }
                %>

            </tbody>
            <tfoot>
               <tr>
             <th colspan="4">&COPY; ErevMax Corporation &trade;Limited &reg;</th>
                        </tr>
            </tfoot>
        </table>
    </body>
</html>
