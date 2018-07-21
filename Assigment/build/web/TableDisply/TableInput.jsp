<%-- 
    Document   : TableInput
    Created on : Apr 6, 2018, 4:26:56 PM
    Author     : basavarajm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Table Input</title>
    </head>
    <body>
    <center>
        <form name="multiply" method="post" action="http://localhost:7070/Assigment/TableDisply/ShowTable.jsp">
            <div>
                <table>
                    <thead>
                        <tr><th colspan="2">Multiplication table</th></tr>
                    </thead>
                    <tbody>
                        <tr><td>Enter Number Here</td><td><input type="number" name="tbNumber1" min="1"  required/></td></tr>
                    </tbody>
                    <tfoot>
                        <tr><th colspan="1"><button type="submit" name="tbSubmit"/>Multiply</th>
                            <td><button type="reset" name="tbReset"/>Reset</td>
                        </tr>
                    </tfoot>
                </table>

            </div>
        </form>
    </center>
</body>
</html>
