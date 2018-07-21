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
            String empId;
            String pr;
            int p = 0, l = 0;
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
            String q;
        %>
        <%

            empId = (String) session.getAttribute("id");
            q = "select * from org.mastertb where empId='" + empId + "'";
        %>

    </head>
    <body>
  <%if (!session.getId().equals(session.getAttribute("sid"))) {
                response.sendRedirect("404.jsp");
            }%>
        <%
            try {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
                st = con.createStatement();
                rs = st.executeQuery(q);
                while (rs.next()) {
                    p = rs.getInt(2);
                    l = rs.getInt(3);
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
                            <h3 class="w3_inner_tittle two">Your Attendance</h3>
                            <div id="chartdiv8"></div>
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
                        "title": "Leave-(<%=l%>)",
                        "value": <%=l%>
                    }, {
                        "title": "Present-(<%=p%>)",
                        "value": <%=p%>
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
