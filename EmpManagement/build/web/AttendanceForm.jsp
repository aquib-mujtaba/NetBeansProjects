<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Employee Management UserDb Portal eRevMax</title>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%@include file="common/js-css.jsp" %>

    </head>
    <body>
            <%-- Menu --%>
            <%@include file="common/menu.jsp" %>
  <%if (!session.getId().equals(session.getAttribute("sid"))) {
                response.sendRedirect("404.jsp");
            }%>

            <!-- /inner_content-->
            <div class="inner_content" >
                <h3 class="w3_inner_tittle two">Employee Attendance Details</h3>
                
                <div class="col-md-6 fallowers_agile agile_info_shadow">
                            
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Employee ID</th>
                                                <th>In Time</th>                                   

                                                <th>Out Time</th>
                                                <th>Attendance Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%!
                                                Connection con = null;
                                                Statement st = null;
                                                ResultSet rs = null;
                                                String q = "select * from org.attendencetb";
                                                int count;
                                                String s1;
                                                String s2;
                                                String s3;
                                                String s4;
                                                boolean b1;
                                                %>
                                                <%
                                                    try
                                                    {
                                                    DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                                                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/org","root","admin");
                                                    st=con.createStatement();
                                                    rs=st.executeQuery(q);
                                                    count=0;
                                                    while(rs.next())
                                                    {
                                                      s1 = rs.getString(1);
                                                      s2 = rs.getString(2);
                                                      s3 = rs.getString(3);
                                                      b1 = rs.getBoolean(4);
                                                      count++;
                                                      
                                                      
                                                        %>
                                                        <tr>
                                                    <td><%=count%></td>
                                                    <td><%=s1%></td>
                                                    <td><%=s2%></td>
                                                    <td><%=s3%></td>
                                                    <%
                                                        
                                                        if(b1==true)
                                                        {
                                                            s4="Present";
                                                         %>
                                                            <td><span class="badge badge-activated"><%=s4%></span></td>
                                                         <%
                                                        }
                                                        else
                                                        {
                                                            s4="Absent";
                                                            %>
                                                            <td><span class="badge badge-deactivated"<td><ning"><%=s4%></span></td>
                                                         <%
                                                        }
                                                        %>
                                                    
                                                     
                                                
                                                
                                            </tr>
                                                <%
                                                            
                                                   
                                                    }
                                                    }
                                                    catch (SQLException ex) 
                                                    {
                                                        ex.printStackTrace();
                                                    }
                                                    finally
                                                    {
                                                        if(st!=null)
                                                        {
                                                            try {
                                                                st.close();
                                                            } catch (SQLException ex) {
                                                               ex.printStackTrace();
                                                            }

                                                        }
                                                        if(con!=null)
                                                        {
                                                            try {
                                                                con.close();
                                                            } catch (SQLException ex) {
                                                               ex.printStackTrace();
                                                            }

                                                        }
                                                        if(rs!=null)
                                                        {
                                                            try {
                                                                rs.close();
                                                            } catch (SQLException ex) {
                                                               ex.printStackTrace();
                                                            }

                                                        }
                                                    }
                                                    
                                                    %>
                                            
                                            
                                        </tbody>
                                    </table>
                                                    
                        </div>
                <!-- //inner_content_w3_agile_info-->
            </div>
       
            <!-- //inner_content-->        
        
      <%-- Footer --%>
        <%@include file="common/footer.jsp" %>
        
        
        
        
        
        
         <!-- js -->

        <script type="text/javascript" src="resources/js/jquery-2.1.4.min.js"></script>

        <!-- /amcharts -->
        <script src="resources/js/modernizr.custom.js"></script>
        <script src="resources/js/classie.js"></script>
        <script src="resources/js/gnmenu.js"></script>
        <script>
            new gnMenu(document.getElementById('gn-menu'));
        </script>
        <!-- script-for-menu -->

        <!-- /circle-->
        <script type="text/javascript" src="resources/js/circles.js"></script>
        <script>
            var colors = [
                ['#ffffff', '#fd9426'], ['#ffffff', '#fc3158'], ['#ffffff', '#53d769'], ['#ffffff', '#147efb']
            ];
            for (var i = 1; i <= 7; i++) {
                var child = document.getElementById('circles-' + i),
                        percentage = 30 + (i * 10);

                Circles.create({
                    id: child.id,
                    percentage: percentage,
                    radius: 80,
                    width: 10,
                    number: percentage / 1,
                    text: '%',
                    colors: colors[i - 1]
                });
            }

        </script>
        <!-- //circle -->
        <!--skycons-icons-->
        <script src="resources/js/skycons.js"></script>
        <script>
            var icons = new Skycons({"color": "#fcb216"}),
                    list = [
                        "partly-cloudy-day"
                    ],
                    i;

            for (i = list.length; i--; )
                icons.set(list[i], list[i]);
            icons.play();
        </script>
        <script>
            var icons = new Skycons({"color": "#fff"}),
                    list = [
                        "clear-night", "partly-cloudy-night", "cloudy", "clear-day", "sleet", "snow", "wind", "fog"
                    ],
                    i;

            for (i = list.length; i--; )
                icons.set(list[i], list[i]);
            icons.play();
        </script>
        <!--//skycons-icons-->
        <!-- //js -->
        <script src="resources/js/screenfull.js"></script>
        <script>
            $(function () {
                $('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

                if (!screenfull.enabled) {
                    return false;
                }



                $('#toggle').click(function () {
                    screenfull.toggle($('#container')[0]);
                });
            });
        </script>
        <script src="resources/js/flipclock.js"></script>

        <script type="text/javascript">
            var clock;

            $(document).ready(function () {

                clock = $('.clock').FlipClock({
                    clockFace: 'HourlyCounter'
                });
            });
        </script>
        <script src="resources/js/bars.js"></script>
        <script src="resources/js/jquery.nicescroll.js"></script>
        <script src="resources/js/scripts.js"></script>

        <script type="text/javascript" src="resources/js/bootstrap-3.1.1.min.js"></script>

        
        
        
        
        
    </body>
</html>
