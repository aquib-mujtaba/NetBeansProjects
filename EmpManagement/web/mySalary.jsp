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
            int basic = 0, tds = 0, pf = 0, bonus = 0, otherDeductions = 0, total = 0;
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;

        %>
        <%
            empId = (String) session.getAttribute("id");
            String q = "select * from org.saltb where empId='" + empId + "'";

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
                while (rs.next()) {
                    basic = rs.getInt(2);
                    tds = rs.getInt(3);
                    pf = rs.getInt(4);
                    bonus = rs.getInt(5);
                    otherDeductions = rs.getInt(6);
                    total = rs.getInt(7);
                }
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

                        <div class="clo-md-6 top_chart agile_info_shadow">
                            <h3 class="w3_inner_tittle two">Your Total Salary is <%=total%></h3>
                            <div id="chartdiv8"></div>
                        </div>
                        <!--=========================================================================================-->

                        <div class="col-md-6 fallowers_agile agile_info_shadow">
                            <h3 class="w3_inner_tittle two">Details</h3>
                            <div class="work-progres">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>PAY</th>
                                                <th>AMOUNT</th>                                   


                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>BASIC</td>
                                                <td><%=basic%></td>                                 

                                                <!--                                                <td><span class="label label-danger">in progress</span></td>
                                                                                                <td><span class="badge badge-info">50%</span></td>-->
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>PF</td>
                                                <td><%=pf%></td>                               

                                                <!--                                                <td><span class="label label-success">completed</span></td>
                                                                                                <td><span class="badge badge-success">100%</span></td>-->
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>TDS</td>
                                                <td><%=tds%></td>                                

                                                <!--                                                <td><span class="label label-warning">in progress</span></td>
                                                                                                <td><span class="badge badge-warning">75%</span></td>-->
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>BONUS</td>
                                                <td><%=bonus%></td>                                 

                                                <!--                                                <td><span class="label label-info">in progress</span></td>
                                                                                                <td><span class="badge badge-info">65%</span></td>-->
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>Other Deductions</td>
                                                <td><%=otherDeductions%></td>                                

                                                <!--                                                <td><span class="label label-warning">in progress</span></td>
                                                                                                <td><span class="badge badge-danger">95%</span></td>-->
                                            </tr>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>TOTAL</td>
                                                <td><%=total%></td>                                

                                                <!--                                                <td><span class="label label-warning">in progress</span></td>
                                                                                                <td><span class="badge badge-danger">95%</span></td>-->
                                            </tr>
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
        /amcharts 
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
        <script>
            var chart = AmCharts.makeChart("chartdiv8", {
                "type": "pie",
                "theme": "light",
                "dataProvider": [{
                        "title": "BASIC-(<%=basic%>)",
                        "value": <%=basic%>
                    }, {
                        "title": "TDS-(<%=tds%>)",
                        "value": <%=tds%>
                    }, {
                        "title": "PF-(<%=pf%>)",
                        "value": <%=pf%>
                    }, {
                        "title": "BONUS-(<%=bonus%>)",
                        "value": <%=bonus%>
                    }, {
                        "title": "OTHER dEDUCTIONS-(<%=otherDeductions%>)",
                        "value": <%=otherDeductions%>
                    }],
                "titleField": "title",
                "valueField": "value",
                "labelRadius": 5,
                "radius": "42%",
                "innerRadius": "60%",
                "labelText": "[[title]]",
                "export": {
                    "enabled": true
                }
            });
        </script>
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
        <%
            } catch (SQLException e) {
                out.println(e.toString());
            }
        %>

    </body>
</html>
