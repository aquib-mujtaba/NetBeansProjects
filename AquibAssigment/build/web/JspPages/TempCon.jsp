
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="tempack.TempCon"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conversion Page</title>
    </head>
  <body>
      <form action="TempCon.jsp" method="post">
          <center>
            <table border="2">
                <tr>
                    <td> Type Temp</td>

                    <td>
                        <input type="text" name="tbSourceTemp"  required>
                    </td>
                </tr>
                <tr>
                    <td>Temp Conversion</td>
                    <td>
                        <select name="tbCon"  required>
                            <option value="">select</option>
                            <option value="c2f">Celsius -> Fahrenheit </option>
                            <option value="f2c">Fahrenheit -> Celsius</option>
                        </select>

                    </td>

                <tr>
                    <td>Result Temp</td>
                    <%
                        if (request.getParameter("vConvert") != null) {
                            String vTemp, vConFac;
                            vTemp = request.getParameter("tbSourceTemp");
                            vConFac = request.getParameter("tbCon");

                    %>
                    <jsp:useBean id="tempo" class="tempack.TempCon">
                        <jsp:setProperty name="tempo" property="temp" value="<%=vTemp%>"/>
                        <jsp:setProperty name="tempo" property="confac" value="<%=vConFac%>"/>
                        <%
                            }
                        %>
                        <td>
                            <jsp:getProperty name="tempo" property="temp"/>
                        </td>
                    </jsp:useBean>
                </tr>
                <tr>
                    <td> 
                        <button type="submit" name="vConvert">Convert</button>
                    </td>
                    <td>
                        <button type="reset" name="breset">Reset</button>
                        <button type="button" name="bsubmit">Close</button>
                    </td>
                </tr>
            </table>
          </center>
        </form>
    </body>
</html>
