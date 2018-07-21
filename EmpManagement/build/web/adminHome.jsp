<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Admin | Home </title>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%@include file="common/js-css.jsp" %>
    </head>
    <body>
        <%if (!session.getId().equals(session.getAttribute("sid"))) {
                response.sendRedirect("404.jsp");
            }%>
        <%--<%@include file="404.jsp" %>--%>
        <!--<iframe src="404.jsp" allowfullscreen></iframe>-->

        <!-- banner -->
        <div class="wthree_agile_admin_info">
            <!-- /w3_agileits_top_nav-->

            <%-- Menu --%>
            <%@include file="common/menu.jsp" %>

            <div class="clearfix"></div>
            <!-- //w3_agileits_top_nav-->
            <!-- /inner_content-->
            <!--<div class="container-fluid">-->

            <!-- /inner_content_w3_agile_info-->
            <div class="inner_content_w3_agile_info">
                <!--<div class="prograc-blocks_agileits">-->
                <div class="button_set_one two agile_info_shadow graph-form">
                    <h3 class="w3_inner_tittle two">${sname} Details Are Displayed Below</h3>
            <%if (request.getAttribute("add") != null) {%>
        <%! String e;%>
        <% e = (String) request.getAttribute("add"); %>
        <% if (e.equals("EmpAdd")) { %>
        <br>
        <div class="alert alert-success" role="alert">
            <strong>Great!</strong> Employee Add successfully
        </div>
        <%}
else{%>
<br>
        <div class="alert alert-danger" role="alert">
            <strong>Oops!</strong> Something Wrong!!.
        </div>
<%}
            }%>
                    <div class="work-progres">
                        <div class="table-responsive">
                            <div class="button_set_one two agile_info_shadow graph-form">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>EmpId</th>
                                            <th>Name</th>
                                            <th>Age</th>                                   
                                            <th>email</th>
                                            <th>DeptNo</th>
<!--                                            <th>Salary</th>
                                            <th>Attendance</th>
                                            <th>leave</th>-->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%!
                                            Connection con = null;
                                            Statement st = null;
                                            ResultSet rs = null;
                                           
                                            String q, empId;
                                            int count;
                                            String s1;
                                            String s2;
                                            int s3;
                                            String s4;
                                            String s8;
//                                            double s5;
//                                            int s6;
//                                            int s7;
                                        %>
                                        <%
                                            empId = (String) session.getAttribute("id");

                                            try {
                                                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
                                                st = con.createStatement();
                                                //                                                    q = "select * from org.emptb where empId='" + empId + "'";
                                                q = "select * from org.emptb";
                                              
                                                rs = st.executeQuery(q);
                                               
                                                count = 0;
                                                while (rs.next()) {
                                                    s1 = rs.getString(1);
                                                    s2 = rs.getString(2);
                                                    s3 = rs.getInt(3);
                                                    s4 = rs.getString(4);
                                                    s8 = rs.getString(5);
//                                                    s5 = rs1.getDouble(7);
//                                                    s6 = rs3.getInt(2);
//                                                    s7 = rs3.getInt(3);
//                                                  s5 = rs.getDouble(6);
//                                                    s6 = rs.getInt(7);
//                                                    s7 = rs.getInt(8);
                                                    count++;
                                        %>
                                        <tr>
                                            <td><%=count%></td>
                                            <!--<td><%=empId%></td>-->

                                            <td><%=s1%></td>
                                            <td><%=s2%></td>
                                            <td><%=s3%></td>
                                            <td><%=s4%></td>
                                            <td><%=s8%></td>
                                            
<!--                                            <td>
<%--<%=s5%>--%>
</td>
-->                                            <td>
    <%--<%=s6%>--%>
</td>
<!--
                                            <td>
<%--<%=s7%>--%>
</td>
-->
                                        </tr>         
                                        <%

                                                }
                                            } catch (SQLException ex) {
                                                ex.printStackTrace();
                                            } 
finally
{

                                                if (st != null) {
                                                    try {
                                                        st.close();
                                                    } catch (SQLException ex) {
                                                        ex.printStackTrace();
                                                    }

                                                }
                                                if (con != null) {
                                                    try {
                                                        con.close();
                                                    } catch (SQLException ex) {
                                                        ex.printStackTrace();
                                                    }

                                                }
                                                if (rs != null) {
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
                            <div class="clearfix"></div>
                            <div class="col-md-3 button_set_one two agile_info_shadow graph-form">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Department ID</th>
                                            <th>Name</th>                                   
                                        </tr>
                                    </thead>
                                    <%!
                                        //                                        Connection con = null;
                                        //                                        Statement st = null;
                                        //                                        ResultSet rs = null;
                                        String q1 = "select * from org.dept";
                                        //                                        int count;
                                        //                                        String s1;
                                        //                                        String s2;

                                    %>
                                    <%                                            try {
                                            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
                                            st = con.createStatement();
                                            rs = st.executeQuery(q1);
                                            count = 0;
                                            while (rs.next()) {
                                                s1 = rs.getString(1);
                                                s2 = rs.getString(2);
                                                count++;
                                    %>
                                    <tr>
                                        <td><%=count%></td>
                                        <td><%=s1%></td>
                                        <td><%=s2%></td>                                                  



                                    </tr>
                                    <%

                                            }
                                        } catch (SQLException ex) {
                                            ex.printStackTrace();
                                        }
finally {
                                            if (st != null) {
                                                try {
                                                    st.close();
                                                } catch (SQLException ex) {
                                                    ex.printStackTrace();
                                                }

                                            }
                                            if (con != null) {
                                                try {
                                                    con.close();
                                                } catch (SQLException ex) {
                                                    ex.printStackTrace();
                                                }

                                            }
                                            if (rs != null) {
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
                            <div class="inner_content" >    
                                <!--<h3 class="w3_inner_tittle two">Employee Login Details</h3>-->                
                                <div class="col-md-6 fallowers_agile agile_info_shadow">  
                                    <div>
                                        <%if (request.getParameter("active") != null) {%>
                                        <% e = (String) request.getAttribute("U"); %>
                                        <% if (e.equals("0")) { %>
                                        <br>
                                        <div class="alert alert-danger" role="alert">
                                            <strong>Oops!</strong> Unable to deactivate. Try Again.
                                        </div></div>
                                        <%} else {%>
                                    <br>
                                    <div class="alert alert-success" role="alert">
                                        <strong>Great!</strong> Successfully deactivated.
                                    </div> <%
                                            }
                                        }%>
                                    <%if (request.getParameter("deactive") != null) {%>
                                    <%! String f;%>
                                    <% f = (String) request.getAttribute("U"); %>
                                    <% if (f.equals("0")) { %>
                                    <br>
                                    <div class="alert alert-danger" role="alert">
                                        <strong>Oops!</strong> Unable to activate. Try Again.
                                    </div></div>
                                    <%} else {%>
                                <br>
                                <div class="alert alert-success" role="alert">
                                    <strong>Great!</strong> Successfully activated.
                                </div>
                                <%
                                        }
                                    }%>
                                <h3 class="w3_inner_tittle two">Employee Login Details</h3>                

                                <form method="POST" action="http://localhost:2018/EmpManagement/DoActivationStatusChange">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>UserName</th>
                                                <th>Password</th>    
                                                <th>UserType</th>
                                                <th>Status</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%!
                                                //                        Connection con = null;
                                                //                        Statement st = null;
                                                //                        ResultSet rs = null;
                                                String q2 = "select * from org.logintb";
                                                //                        int count;
                                                String s1i;
                                                //                        String s2;
                                                String s3i;
                                                //                        String s4;
                                                boolean b1;
                                            %>
                                            <%
                                                try {
                                                    DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "admin");
                                                    st = con.createStatement();
                                                    rs = st.executeQuery(q2);
                                                    count = 0;
                                                    while (rs.next()) {
                                                        s1i = rs.getString(1);
                                                        s2 = rs.getString(2);
                                                        s3i = rs.getString(3);
                                                        b1 = rs.getBoolean(4);
                                                        count++;

                                                        if (b1 == true) {
                                                            s4 = "Activated";
                                                        } else {
                                                            s4 = "Deactivated";
                                                        }

                                            %>
                                            <tr>
                                                <td><%=count%></td>
                                                <td><%=s1i%></td>                                                    
                                                <td><%=s2%></td>
                                                <%
                                                    if (s3i.equalsIgnoreCase("admin")) {
                                                %>
                                                <td><span class="label label-admin"><%=s3i%></span></td>
                                                    <%
                                                    } else if (s3i.equalsIgnoreCase("employee")) {
                                                    %>
                                                <td><span class="label label-employee"><%=s3i%></span></td>
                                                    <%
                                                        }
                                                        if (b1) {
                                                            s4 = "Activated";
                                                    %>
                                                <td><button type="submit" name="active" value="<%=s1i%>"><span class="badge badge-activated"><%=s4%></span></button></td>
                                                        <%
                                                        } else {
                                                            s4 = "Deactivated";
                                                        %>
                                                <td><button type="submit" name="deactive" value="<%=s1i%>"><span class="badge badge-deactivated"><%=s4%></span></button></td>

                                                <%

                                                    }


                                                %>

                                            </tr>
                                            <%                                                        }
                                                } catch (SQLException ex) {
                                                    ex.printStackTrace();
                                                } finally {
                                                    if (st != null) {
                                                        try {
                                                            st.close();
                                                        } catch (SQLException ex) {
                                                            ex.printStackTrace();
                                                        }

                                                    }
                                                    if (con != null) {
                                                        try {
                                                            con.close();
                                                        } catch (SQLException ex) {
                                                            ex.printStackTrace();
                                                        }

                                                    }
                                                    if (rs != null) {
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
                                </form>
                            </div>  
                            <!--<div class="clearfix"></div>-->
                        </div>
                        <!--<div class="clearfix"></div> <br>-->
                        <%--<%@include file="myAttendance.jsp" %>--%>
                        <%--<%@include file="mySalary.jsp" %>--%>
                    </div></div>
                <!--                <div>
                                    <a href="AttendanceForm.jsp" class="btn btn-info" role="button">View Attendance Of Employee</a>
                                    <a href="salaryForm.jsp" class="btn btn-info" role="button">View Salary Details of Employees</a>
                                    <a href="myLeaveForm.jsp" class="btn btn-primary btn-flat btn-pri" role="button"><i class="fa fa-plus" aria-hidden="true"></i>Apply For leave</a>
                                    <a href="empLeaves.jsp" class="btn btn-info" role="button">Leave Actions</a>
                
                                </div>-->
                <div class="clearfix"></div>
            </div>


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
