<%-- 
    Document   : Register
    Created on : Apr 12, 2018, 3:57:45 PM
    Author     : basavarajm
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
  <body>
      
        <%!
            String vPK;
            String sql = "UPDATE erevshema.profiler SET dob=?,password=?,gender=? WHERE userName=?";
            String slt;
            String ps;
            String dob;
            String gender;
            String nGender;
            String nPass;
            String nDob;
            
        %>
        <%
            try {
                vPK = request.getParameter("userName");
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/erevshema", "root", "admin");
//                Statement st = con.createStatement();
                slt="select * from erevshema.profiler where userName="+vPK;
                PreparedStatement st2 = con.prepareStatement(slt);
               ResultSet rs= st2.executeQuery();
               while(rs.next()){
                ps=rs.getString("password");
                dob=rs.getString("dob");
                gender=rs.getString("gender");
               }
               nPass=request.getParameter("tbPassword");
               nGender=request.getParameter("tbgender");
               nDob=request.getParameter("tbDob");
                PreparedStatement st = con.prepareStatement(sql);
                st.setString(1, dob);
                st.setString(2, ps);
                st.setString(3, nGender);
                st.setString(4, vPK);
                int a = st.executeUpdate();
//                int a = st.executeUpdate("delete from erevshema.profiler where userName="+vPK);
//                ResultSetMetaData rsmd = rs.getMetaData();

        %><center>
        <h3>Data Updated Successfully Whose User Name was <%=vPK%> </h3>
        <h3>Total Row Effected Is <%=a%> </h3>
        <a href="http://localhost:7070/CRUDinJSP/JSPOpration/SelectOpratation.jsp"> Click Here For List Of data</a></center>
        <%} catch (SQLException e) {%>

    <h2><%=e.toString()%></h2>
    <%
        }
    %>
        <center>
        <form name="frmReg" method="POST" action="http://localhost:7070/ErevServ/Profiler" > 
            <div >
                <table border="1" style="width: 500px;height: 600px">
                    <thead>
                        <tr><th colspan="2">Update FORM</th></tr>
                    </thead>
                    <tbody>
                        <tr><td>UserName</td><td><input type="text" name="tbUsername" value="<%=vPK%>" readonly=""/></td></tr>
                        <tr><td>New Password</td><td><input type="password" name="tbPassword" value="<%=ps%>"/></td></tr>
                        <tr><td>Change Date-Of-Birth</td><td><input type="date" name="tbDob" value="<%=dob%>"/></td></tr>
                        <tr><td>Change Gender</td>
                            <td> Male<input type="radio" name="tbgender" value=""/>
                                Female<input type="radio" name="tbgender" value="<%=gender%>"/></td>
                        </tr>
                        <tr>
                            <td> 
                                <button type="submit" name="bsubmit">Update Data</button>
                            </td>
                            <td>
                                <button type="reset" name="breset">Reset</button>
                                <button type="button" name="bsubmit">Close</button>
                            </td>
                        </tr>

                    </tbody>
                    <tfoot>
             <tr>
                 <th colspan="2">&COPY;ErevMax Corporation &trade;Limited &reg;</th>
             </tr>
                    </tfoot>

                </table>

            </div>
        </form>
        </center>
    </body>
</html>
