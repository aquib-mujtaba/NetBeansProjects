<%-- 
    Document   : teamParticipants
    Created on : Apr 12, 2017, 1:48:25 PM
    Author     : Aquib
--%>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Team Participants</title>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%@include file="common/js-css.jsp" %>
    </head>
    <body>
        <!-- banner -->
        <div class="wthree_agile_admin_info">
            <!-- /w3_agileits_top_nav-->

            <%-- Menu --%>
            <%@include file="common/menu.jsp" %>

            <div class="clearfix"></div>
            <!-- //w3_agileits_top_nav-->

            <!-- /inner_content-->
            <div class="inner_content">
                <!-- /inner_content_w3_agile_info-->

                <!-- breadcrumbs -->
                <div class="w3l_agileits_breadcrumbs">
                    <div class="w3l_agileits_breadcrumbs_inner">
                        <ul>
                            <li><a href="main-page.jsp">Home</a><span>«</span></li>
                            <li>Short Codes<span>«</span></li>
                            <li>Team Participants</li>
                        </ul>
                    </div>
                </div>
                <div class="inner_content_w3_agile_info two_in">

                    <h2 class="w3_inner_tittle">Team Participants</h2>
                    <div class="wthree-typo agile_info_shadow">
                        <form action="#" method="post">

                            <div class="form-group">
                                <label for="selector1" class="col-sm-1 control-label1">Team Manager :</label>
                                <div class="col-sm-2"><select name="selector1" id="selector1" class="form-control1">
                                        <option>Name Of Emp</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                    </select></div>

                            </div>
                            <div align="right"><button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                <input type="search" name="search" placeholder="Search Member..." required=""></div>
                        </form> 
                        <div class="grid_3 grid_4 w3layouts">
                            <div class="bs-example">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td><h5 id="h5.-bootstrap-heading">Emp Code<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                            <td><h5 id="h5.-bootstrap-heading">Emp Name <a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                            <td><h5 id="h5.-bootstrap-heading">Mobile<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                            <td><h5 id="h5.-bootstrap-heading">Department<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                            <td><h5 id="h5.-bootstrap-heading">Status<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                            <td><h5 id="h5.-bootstrap-heading">Action<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>

                                        </tr>

                                        <tr>
                                            <td><h6>1</h6></td>
                                            <td><h6>1323</h6></td>
                                            <td><h6>Bhopal</h6></td>
                                            <td><h6>Madhya Pradesh</h6></td>
                                            <td><h6>Active</h6></td>
                                            <td><h6><a href="">Edit</a> | <a href="">Delete</a></h6></td>
                                        </tr>
                                        <tr>
                                            <td><h6>2</h6></td>
                                            <td><h6>1323</h6></td>
                                            <td><h6>Bhopal</h6></td>
                                            <td><h6>Madhya Pradesh</h6></td>
                                            <td><h6>Active</h6></td>
                                            <td><h6><a href="">Edit</a> | <a  href="">Delete</a></h6></td>
                                        </tr><tr>
                                            <td><h6>3</h6></td>
                                            <td><h6>1323</h6></td>
                                            <td><h6>Bhopal</h6></td>
                                            <td><h6>Madhya Pradesh</h6></td>
                                            <td><h6>Active</h6></td>
                                            <td><h6><a href="">Edit</a> | <a href="">Delete</a></h6></td>
                                        </tr><tr>
                                            <td><h6>4</h6></td>
                                            <td><h6>1323</h6></td>
                                            <td><h6>Bhopal</h6></td>
                                            <td><h6>Madhya Pradesh</h6></td>
                                            <td><h6>Active</h6></td>
                                            <td><h6><a href="">Edit</a> | <a href="">Delete</a></h6></td>

                                        </tr>
                                    </tbody>
                                </table>

                                <div ><span>
                                        <button type="button" class="btn btn-primary btn-flat btn-pri"><i class="fa fa-plus" aria-hidden="true"></i> Add More</button>
                                    </span>
                                    <span style="float: right">
                                        <button  type = "button" class = "btn btn-primary ">Update</button>
                                    </span>
                                </div>
                            </div>


                            <div class="clearfix"></div>

                        </div>
                        <!-- //social_media-->
                    </div>
                    <!-- //inner_content_w3_agile_info-->
                </div>
                <!-- //inner_content-->
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
    </body>
</html>