<%-- 
    Document   : ErrorCaller
    Created on : Apr 9, 2018, 12:36:43 PM
    Author     : basavarajm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="ErrorPagger.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>This Page going to call Error Page</title>
        <%! 
        int x=0,y=0,r=0;
        %>
        <% 
        if(request.getParameter("bsubmit")!=null)
        {
        x=Integer.parseInt(request.getParameter("tbFirstNumber"));
        y=Integer.parseInt(request.getParameter("tbSeconNumber"));
      r=x/y;
        }
        %>
    </head>
    
  <body>
        <center>
        <form name="frmReg" method="POST" action="" > 
            <div >
                <table border="1" style="width: 500px;height: 600px">
                    <thead>
                        <tr><th colspan="2">Calculation FORM</th></tr>
                    </thead>
                    <tbody>
                        <tr><td>First Number</td><td><input type="text" name="tbFirstNumber" required/></td></tr>
                        <tr><td>Second Number</td><td><input type="text" name="tbSeconNumber" required/></td></tr>
                        <tr><td>Result</td><td><input type="text" name="tbConfirm" value="<%=r%>" readonly/></td></tr>
                        <tr>
                            <td> 
                                <button type="submit" name="bsubmit"> Divide </button>
                            </td>
                            <td>
                                <button type="reset" name="bReset">Clear</button>
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
