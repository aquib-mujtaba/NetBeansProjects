<%-- 
    Document   : empLeaves
    Created on : May 3, 2018, 1:39:50 PM
    Author     : advitn
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Admin | Leave Action</title>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%@include file="common/js-css.jsp" %>
        <%!
            String empId, pr;
            String startDate, endDate, comment;
            int approveStatus, leaveId;
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
            String q;
        %> <%
            empId = (String) session.getAttribute("id");
            q = "select * from org.leavedetails ";
        %>
    </head>
    <body>
  <%if (!session.getId().equals(session.getAttribute("sid"))) {
                response.sendRedirect("404.jsp");
            }%>        <%
            try {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
                st = con.createStatement();
                rs = st.executeQuery(q);
        %> <div class="wthree_agile_admin_info">
            <%-- Menu --%>
            <%@include file="common/menu.jsp" %>

            <div class="clearfix"></div>
            <div class="inner_content">
                <div class="inner_content_w3_agile_info two_in">
                    <div class="chart_agile">
                        <div class="col-md-8 fallowers_agile agile_info_shadow">
                            <h3 class="w3_inner_tittle two">Details</h3>
                            <div class="work-progres">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>Start Date</th>
                                                <th>End Date</th>                                   
                                                <th>Comment</th>
                                                <th>Approve Status</th>
                                                <th>Action</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                while (rs.next()) {
                                                    startDate = rs.getString(2);
                                                    endDate = rs.getString(3);
                                                    comment = rs.getString(4);
                                                    approveStatus = rs.getInt(5);
                                                    leaveId = rs.getInt(6);
                                            %>
                                            <tr>
                                                <td><%=startDate%></td>
                                                <td><%=endDate%></td>
                                                <td><%=comment%></td>  

 <!--<td><%=approveStatus%></td>-->
                                                <%
                                                    if (approveStatus == 0) {
                                                %>
                                                <td><span class="label label-danger">Pending</span></td>
                                                <%} else {
                                                %>
                                                <td><span class="label label-success">Approved</span></td>
                                                <%}%>

                                                <td>
                                                    <a href="http://localhost:2018/EmpManagement/deleteLeaveRequest?lid=<%=leaveId%>&bApprove=bApprove"> <button class="grow1" type='button' style="background-color: green;" name="bApprove" <% if(approveStatus!= 0){ %>disabled<%}%>>Approve</button></a>
                                                    <a href="http://localhost:2018/EmpManagement/deleteLeaveRequest?lid=<%=leaveId%>&bReject=bReject"><button class="grow1" type='button' style="background-color: #ffc107;" name="bReject" <% if(approveStatus== 0){ %>disabled<%}%>>Reject</button></a>
                                                    <a href="http://localhost:2018/EmpManagement/deleteLeaveRequest?lid=<%=leaveId%>"><button class="grow1" type='button' style="background-color: red;" name="bDelete">Delete</button></a>
                                                </td>
                                                <!--<td><span class="badge badge-info">50%</span></td>-->

                                            </tr>
                                            <%

                                                }
//                                            } request.setAttribute("endDate", endDate);
//                                                    request.setAttribute("comment", comment );

                                            %>

                                        </tbody>
                                    </table>
                                </div>
                            </div>											
                        </div>
                    </div></div></div></div>
                    <%            } catch (SQLException e) {
                            out.println(e.toString());
                        }
                    %>
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
