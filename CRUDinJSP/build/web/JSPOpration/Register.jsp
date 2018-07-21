<%-- 
    Document   : Register
    Created on : Apr 12, 2018, 3:57:45 PM
    Author     : basavarajm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
  <body>
        <center>
        <form name="frmReg" method="POST" action="http://localhost:7070/ErevServ/Profiler" > 
            <div >
                <table border="1" style="width: 500px;height: 600px">
                    <thead>
                        <tr><th colspan="2">REGISTRATION FORM</th></tr>
                    </thead>
                    <tbody>
                        <tr><td>UserName</td><td><input type="text" name="tbUsername" required/></td></tr>
                        <tr><td>Password</td><td><input type="password" name="tbPassword" required/></td></tr>
                        <tr><td>Confirm Password</td><td><input type="password" name="tbConfirm" required/></td></tr>
                        <tr><td>Date-Of-Birth</td><td><input type="date" name="tbDob" required/></td></tr>
                        <tr><td>Gender</td>
                            <td> Male<input type="radio" name="tbgender" value="true"/>
                                Female<input type="radio" name="tbgender" value="false"/></td>
                        </tr>
                        <tr>
                            <td> 
                                <button type="submit" name="bsubmit">Register</button>
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
