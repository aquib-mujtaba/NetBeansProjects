<%-- 
    Document   : imageInsert
    Created on : May 22, 2018, 1:38:04 PM
    Author     : basavarajm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
            function f1()
            {
                
            }
        </script>
    </head>
    <body>
    <h1>File Upload to Database Demo</h1>
        <form method="post" action="http://localhost:8080/OnlineReservationBooking/AdminInsert2" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Id: </td>
                    <td><input type="text" name="tId" size="50"/></td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="tName" size="50"/></td>
                </tr>
                <tr>
                    <td>Image: </td>
                    <td><input type="file" name="tImage" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
                <tr>
<!--                    <td colspan="2">
                        <a href="http://localhost:8080/practice/image"><img src="../prac1/two/x1.jpg" alt="simg not found" id="x1img" name="x1name" onclick="f1();"></a>
                    </td>-->
                </tr>
            </table>
        </form>
    </body>
</html>
