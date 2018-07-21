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
<!--          <style>
            .footer {
               position: fixed;
               position: fixed;
               left: 0;
               bottom: 0;
               width: 100%;
               height: 7%;
               background-color: black;
               color: white;
               text-align: center;
            }
          </style>-->
    </head>
    <body> 
  <%if (!session.getId().equals(session.getAttribute("sid"))) {
                response.sendRedirect("404.jsp");
            }%>        
            <%-- Menu --%>
            <%@include file="common/menu.jsp" %>


            <!-- /inner_content-->
            <div class="inner_content" >
                <h3 class="w3_inner_tittle two">Employee Salary Details</h3>
                
                <div class="col-md-6 fallowers_agile agile_info_shadow">
                            
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Employee ID</th>
                                                <th>Basic</th>                                   
                                                <th>TDS</th>
                                                <th>PF</th>
                                                <th>Bonus</th>
                                                <th>Others</th>
                                                <th>Total Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%!
                                                Connection con = null;
                                                Statement st = null;
                                                ResultSet rs = null;
                                                String q = "select * from org.saltb";
                                                int count;
                                                String s1;
                                                double basic;
                                                double tds;
                                                double pf;
                                                double bon;
                                                double tot;
                                                double other;
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
                                                      basic = rs.getDouble(2);
                                                      tds = rs.getDouble(3);
                                                      pf = rs.getDouble(4);
                                                      bon = rs.getDouble(5);
                                                      other = rs.getDouble(6);
                                                      tot = rs.getDouble(7);
                                                      count++;
                                                      %>
                                                      <tr>
                                                    <td><%=count%></td>
                                                    <td><%=s1%></td>
                                                    <td><%=basic%></td>
                                                    <td><%=tds%></td>
                                                    <td><%=pf%></td>
                                                    <td><%=bon%></td>
                                                    <td><%=other%></td>
                                                    <td><%=tot%></td>
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
        <script src="resources/js/amcharts.js"></script>
        <script src="resources/js/serial.js"></script>
        <script src="resources/js/export.js"></script>	
        <script src="resources/js/light.js"></script>
        <!-- Chart code -->
        <script>
            var chart = AmCharts.makeChart("chartdiv", {
                "theme": "light",
                "type": "serial",
                "startDuration": 2,
                "dataProvider": [{
                        "country": "USA",
                        "visits": 4025,
                        "color": "#FF0F00"
                    }, {
                        "country": "China",
                        "visits": 1882,
                        "color": "#FF6600"
                    }, {
                        "country": "Japan",
                        "visits": 1809,
                        "color": "#FF9E01"
                    }, {
                        "country": "Germany",
                        "visits": 1322,
                        "color": "#FCD202"
                    }, {
                        "country": "UK",
                        "visits": 1122,
                        "color": "#F8FF01"
                    }, {
                        "country": "France",
                        "visits": 1114,
                        "color": "#B0DE09"
                    }, {
                        "country": "India",
                        "visits": 984,
                        "color": "#04D215"
                    }, {
                        "country": "Spain",
                        "visits": 711,
                        "color": "#0D8ECF"
                    }, {
                        "country": "Netherlands",
                        "visits": 665,
                        "color": "#0D52D1"
                    }, {
                        "country": "Russia",
                        "visits": 580,
                        "color": "#2A0CD0"
                    }, {
                        "country": "South Korea",
                        "visits": 443,
                        "color": "#8A0CCF"
                    }, {
                        "country": "Canada",
                        "visits": 441,
                        "color": "#CD0D74"
                    }, {
                        "country": "Brazil",
                        "visits": 395,
                        "color": "#754DEB"
                    }, {
                        "country": "Italy",
                        "visits": 386,
                        "color": "#DDDDDD"
                    }, {
                        "country": "Taiwan",
                        "visits": 338,
                        "color": "#333333"
                    }],
                "valueAxes": [{
                        "position": "left",
                        "axisAlpha": 0,
                        "gridAlpha": 0
                    }],
                "graphs": [{
                        "balloonText": "[[category]]: <b>[[value]]</b>",
                        "colorField": "color",
                        "fillAlphas": 0.85,
                        "lineAlpha": 0.1,
                        "type": "column",
                        "topRadius": 1,
                        "valueField": "visits"
                    }],
                "depth3D": 40,
                "angle": 30,
                "chartCursor": {
                    "categoryBalloonEnabled": false,
                    "cursorAlpha": 0,
                    "zoomable": false
                },
                "categoryField": "country",
                "categoryAxis": {
                    "gridPosition": "start",
                    "axisAlpha": 0,
                    "gridAlpha": 0

                },
                "export": {
                    "enabled": true
                }

            }, 0);
        </script>
        <!-- Chart code -->
        <script>
            var chart = AmCharts.makeChart("chartdiv1", {
                "type": "serial",
                "theme": "light",
                "legend": {
                    "horizontalGap": 10,
                    "maxColumns": 1,
                    "position": "right",
                    "useGraphSettings": true,
                    "markerSize": 10
                },
                "dataProvider": [{
                        "year": 2017,
                        "europe": 2.5,
                        "namerica": 2.5,
                        "asia": 2.1,
                        "lamerica": 0.3,
                        "meast": 0.2,
                        "africa": 0.1
                    }, {
                        "year": 2016,
                        "europe": 2.6,
                        "namerica": 2.7,
                        "asia": 2.2,
                        "lamerica": 0.3,
                        "meast": 0.3,
                        "africa": 0.1
                    }, {
                        "year": 2015,
                        "europe": 2.8,
                        "namerica": 2.9,
                        "asia": 2.4,
                        "lamerica": 0.3,
                        "meast": 0.3,
                        "africa": 0.1
                    }],
                "valueAxes": [{
                        "stackType": "regular",
                        "axisAlpha": 0.5,
                        "gridAlpha": 0
                    }],
                "graphs": [{
                        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                        "fillAlphas": 0.8,
                        "labelText": "[[value]]",
                        "lineAlpha": 0.3,
                        "title": "Europe",
                        "type": "column",
                        "color": "#000000",
                        "valueField": "europe"
                    }, {
                        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                        "fillAlphas": 0.8,
                        "labelText": "[[value]]",
                        "lineAlpha": 0.3,
                        "title": "North America",
                        "type": "column",
                        "color": "#000000",
                        "valueField": "namerica"
                    }, {
                        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                        "fillAlphas": 0.8,
                        "labelText": "[[value]]",
                        "lineAlpha": 0.3,
                        "title": "Asia-Pacific",
                        "type": "column",
                        "color": "#000000",
                        "valueField": "asia"
                    }, {
                        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                        "fillAlphas": 0.8,
                        "labelText": "[[value]]",
                        "lineAlpha": 0.3,
                        "title": "Latin America",
                        "type": "column",
                        "color": "#000000",
                        "valueField": "lamerica"
                    }, {
                        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                        "fillAlphas": 0.8,
                        "labelText": "[[value]]",
                        "lineAlpha": 0.3,
                        "title": "Middle-East",
                        "type": "column",
                        "color": "#000000",
                        "valueField": "meast"
                    }, {
                        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                        "fillAlphas": 0.8,
                        "labelText": "[[value]]",
                        "lineAlpha": 0.3,
                        "title": "Africa",
                        "type": "column",
                        "color": "#000000",
                        "valueField": "africa"
                    }],
                "rotate": true,
                "categoryField": "year",
                "categoryAxis": {
                    "gridPosition": "start",
                    "axisAlpha": 0,
                    "gridAlpha": 0,
                    "position": "left"
                },
                "export": {
                    "enabled": true
                }
            });
        </script>

        <!-- //amcharts -->
        <script src="resources/js/chart1.js"></script>
        <script src="resources/js/Chart.min.js"></script>
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
                                                    
