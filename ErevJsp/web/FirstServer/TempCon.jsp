<%-- 
    Document   : TempCon
    Created on : Apr 5, 2018, 2:28:50 PM
    Author     : basavarajm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Enter Your Temp</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%!
            double calTemp = 0.0, farTemp = 0.0;
            char confac = 'A';
        %>
        <%
            if (request.getParameter("bsubmit") != null) {
                if (request.getParameter("rbTemp") != null) {
                    confac = request.getParameter("rbTemp").charAt(0);
                }
               
                calTemp = Double.parseDouble(request.getParameter("tbCelsious"));
                farTemp = Double.parseDouble(request.getParameter("tbFahrenheit"));
                switch (confac) {
                    case 'C':
                        farTemp = calTemp * 1.8 + 32.0;
                        break;
                    case 'F':
                        calTemp = (farTemp - 32.0) / 1.8;
                        break;
                    default:
                        out.println("<h2 style='color:red;background-color:black'>Please select An opraton First</h2>");
                        break;
                }
            }
        %>
    </head>
    <body>
    <center>
        <form name="frmTemp" method="POST" action="" > 
            <div >
                <table border="1" style="width: 500px;height: 600px">
                    <thead>
                        <tr><th colspan="2">Temp Conversion</th></tr>
                    </thead>
                    <tbody>
                        <tr><td>Celsius</td><td><input type="number"  name="tbCelsious" min="-1000" max="1000" value="<%=calTemp%>" /></td></tr>
                        <tr><td>Fahrenheit</td><td><input type="number"  name="tbFahrenheit" min="-1000" max="1000" value="<%=farTemp%>" /></td></tr>
                        <tr><td>Conversion Operation</td>
                            <td> Celsius to Fahrenheit<input type="radio" name="rbTemp" value="Ctf"/>
                                Fahrenheit to   Celsius<input type="radio" name="rbTemp" value="Ftc"/></td>
                        </tr>
                        <tr>
                            <td> 
                                <button type="submit" name="bsubmit">Convert</button>
                            </td>
                            <td>
                                <button type="reset" name="breset">Clear</button>
                                <button type="button" name="bClose" onclick="window.close()">Close</button>
                            </td>
                        </tr>

                    </tbody>
                    <tfoot>
                        <tr>
                            <th colspan="2">&COPY; ErevMax Corporation &trade;Limited &reg;</th>
                        </tr>
                    </tfoot>

                </table>

            </div>
        </form>
    </center>
</body>
</html>
