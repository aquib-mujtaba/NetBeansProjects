<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Esteem  An Admin Panel Category Flat Bootstrap Responsive Website Template | Charts :: w3layouts</title>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%@include file="common/js-css.jsp" %>
        <%!
            String empId, pr;
            String startDate, endDate, comment;
            int approveStatus;
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
            String q;
        %>
        <%
            empId = (String) session.getAttribute("id");
            q = "select * from org.leavedetails where empId='" + empId + "'";
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
                %>
        <!-- banner -->

        <div class="wthree_agile_admin_info">
            <%-- Menu --%>
            <%@include file="common/menu.jsp" %>

            <div class="clearfix"></div>
            <div class="inner_content">
                <div class="inner_content_w3_agile_info two_in">
                    <h2 class="w3_inner_tittle">Hello ${sname}</h2>
                    <div class="chart_agile">

                        <%if (request.getParameter("lSubmit") != null) {%>
                        <%! String e;%>
                        <% e = (String) request.getAttribute("success"); %>
                        <% if (e.equals("suc")) { %>
                        <br>
                        <div class="alert alert-success" role="alert">
                            <strong>Great! </strong>Leave Applied Successfully.
                        </div>
                        <%}%>
                        <%}%>
                        <!--=========================================================================================-->

                        <div class="col-md-6 fallowers_agile agile_info_shadow">
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


                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                     while (rs.next()) {
                                                    startDate = rs.getString(2);
                                                    endDate = rs.getString(3);
                                                    comment = rs.getString(4);
                                                    approveStatus = rs.getInt(5);

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

                                                <!--<td><span class="badge badge-info">50%</span></td>-->
                                            </tr>
                                            <%}%>
                                            <!--                                            <tr>
                                                                                            <td>6</td>
                                                                                            <td>Tesla</td>
                                                                                            <td>Mickey</td>                                  
                                            
                                                                                            <td><span class="label label-info">in progress</span></td>
                                                                                            <td><span class="badge badge-success">95%</span></td>
                                                                                        </tr>-->
                                        </tbody>
                                    </table>
                                </div>
                            </div>											
                        </div>

                        <!--===============================================================================================-->
                        <div class="col-md-6 button_set_one two agile_info_shadow graph-form">
                            <h3 class="w3_inner_tittle two">Apply For Leave</h3>
                            <div class="grid-1">
                                <div class="form-body">
                                    <div data-example-id="simple-form-inline"> 
                                        <form class="form-inline" method="POST" action="http://localhost:2018/EmpManagement/doApplyLeave"> 
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th>Start Date</th>
                                                        <th>End Date</th>                                   
                                                        <th>Comment</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                <div class="form-group"> 
                                                    <td><input type="date" class="form-control" name="startDate" id="startDate" placeholder="Start Date"></td> </div> 
                                                <div class="form-group"> 
                                                    <td><input type="date" class="form-control" name="endDate" id="endDate" placeholder="End Date"></td> </div> 
                                                <div class="form-group"> 
                                                    <td><input type="text" class="form-control" name="comment" id="comment" placeholder="Comment"></td> </div> 
                                                <br>
                                                </tr>
                                                <tr>
                                                    <td><button type="submit" name="lSubmit" class="btn btn-default">Apply</button> </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </form> 
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                    </div>

                </div>
            </div>

        </div>
        <!-- banner -->

        <%-- Footer --%>
        <%@include file="common/footer.jsp" %>

        <!-- js -->

        <script type="text/javascript" src="resources/js/jquery-2.1.4.min.js"></script>
        <script src="resources/js/modernizr.custom.js"></script>

        <script src="resources/js/classie.js"></script>
        <script src="resources/js/gnmenu.js"></script>
        <script>
            new gnMenu(document.getElementById('gn-menu'));
        </script>
        <!--         /amcharts -->
        <script src="resources/js/amcharts.js"></script>
        <!--<script src="resources/js/serial.js"></script>-->
        <!--<script src="resources/js/export.js"></script>-->	
        <script src="resources/js/light.js"></script>
        <!--<script src="resources/js/xy.js"></script>-->
        <!--<script src="resources/js/gauge.js"></script>-->
        <!--<script src="resources/js/radar.js"></script>-->
        <script src="resources/js/pie.js"></script>
        <!--         Chart code -->
        <%

        %>
        <!-- //amcharts -->
        <script src="resources/js/chart1.js"></script>
        <script src="resources/js/Chart.min.js"></script>
        <script src="resources/js/sales.js"></script>

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
        <script src="resources/js/jquery.nicescroll.js"></script>
        <script src="resources/js/scripts.js"></script>

        <script type="text/javascript" src="resources/js/bootstrap-3.1.1.min.js"></script>
        <%            } catch (SQLException e) {
                out.println(e.toString());
            }
        %>

    </body>
</html>

