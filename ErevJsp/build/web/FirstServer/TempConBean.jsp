

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="beanpack.TempConBean" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Temperature Conversion</title>
    </head>
    <body>
        <form action="TempConBean.jsp" method="post">
            <table border="4">
                <tr>
                    <td> Source Temp</td>

                    <td>
                        <input type="text" name="tbSourceTemp" id="tbSourceTem" required>
                    </td>
                </tr>
                <tr>
                    <td>Temp Conversion</td>
                    <td>
                        <select name="tbCon" id="tbCon" required>
                            <option value="">--------select-----</option>
                            <option value="c2f">Celsius to Fahrenheit </option>
                            <option value="f2c">Fahrenheit To Celsius</option>
                        </select>

                    </td>

                <tr>
                    <td>Target Temp..</td>
                    <%
                        if (request.getParameter("vConvert") != null) {
                            String vTemp, vConFac;
                            vTemp = request.getParameter("tbSourceTemp");
                            vConFac = request.getParameter("tbCon");

                    %>
                    <jsp:useBean id="temper" class="beanpack.TempConBean">
                        <jsp:setProperty name="temper" property="temp" value="<%=vTemp%>"/>
                        <jsp:setProperty name="temper" property="confac" value="<%=vConFac%>"/>
                        <%
                            }
                        %>
                        <td>
                            <jsp:getProperty name="temper" property="temp"/>
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
        </form>
    </body>
</html>
