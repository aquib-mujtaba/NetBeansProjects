<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Home | Add Items </title>
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
                            <li>Item Entry</li>
                        </ul>
                    </div>
                </div>
                <!-- //breadcrumbs -->

                <div class="inner_content_w3_agile_info two_in">

                    <h2 class="w3_inner_tittle">Issue Book</h2>
                    <div class="graph-2 graph-form general agile_info_shadow">

                        <!-- /citymaster -->
                        <form class="form-horizontal" method="post">

                            <div class="grid_3 grid_4 w3layouts">
                                <div class="bs-example">
                                    <table class="table">
                                        <tbody>

                                            <tr>
                                                <td>
                                                    <div>  
                                                        <label for="selector1" class="col-sm-3 control-label">Batch</label>
                                                        <div class="col-sm-10 control-label"><select name="selector1" id="selector1" class="form-control1">
                                                                <option>Select Batch</option>
                                                                <option>1.</option>
                                                                <option>2.</option>
                                                                <option>3.</option>
                                                                <option>4.</option>
                                                            </select></div>
                                                    </div></td>
                                                <td>
                                                <td>
                                                    <div class="form-group"> <label for="inputEmail3" class="col-xs-0 control-label">Registration No*</label>
                                                    </div></td>
                                                <td>
                                                    <div class="col-xs-12 control-label">
                                                        <input type="text" name="field-1-3" id="field-1-3" required="true" filter="greater_than:10|less_than:15" class="form-control" data-required="Given value must be between 10 and 15">
                                                    </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group"> <label for="inputEmail3" class="col-xs-  control-label">Enquiry No</label>
                                                </td>
                                                <td>

                                                    <div class="col-sm-10 control-label">
                                                        <input type="text" name="field-1-3" id="field-1-3" required="true" filter="greater_than:10|less_than:15" class="form-control" data-required="Given value must be between 10 and 15">
                                                    </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group"> <label for="inputEmail3" class="col-xs-0 control-label ">Mobile</label>
                                                </td>
                                                <td>
                                                    <div class="col-sm-12 control-label">
                                                        <input type="text" name="field-1-3" id="field-1-3" required="true" filter="greater_than:10|less_than:15" class="form-control" data-required="Given value must be between 10 and 15">
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div align="center">
                                <button type="submit" class="btn btn-default fa fa-check">Save</button>
                                <button type="cancel" class="btn btn-default fa fa-times">Cancel</button>  </div>
                        </form>
                    </div>
                    <div class="grid_3 grid_4 w3layouts">
                        <div class="bs-example">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td><h5 id="h5.-bootstrap-heading">Sr No<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Enq No.<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Reg No.<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Name<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Contact<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Reg. for<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Batch<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Alloted<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>

                                    </tr>

                                    <tr>
                                        <td><h6>1</h6></td>
                                        <td><h6>1323</h6></td>
                                        <td><h6>1323</h6></td>
                                        <td><h6>Bhopal</h6></td>
                                        <td><h6>55466545654</h6></td>
                                        <td><h6>Reg For</h6></td>
                                        <td><h6>Batch</h6></td>
                                        <td><h6>----</h6></td>
                                    </tr>
                                    <!--                                        <tr>
                                                                                <td><h6>2</h6></td>
                                                                                <td><h6>1323</h6></td>
                                                                                <td><h6>Bhopal</h6></td>
                                                                                <td><h6>Madhya Pradesh</h6></td>
                                                                                <td><h6><a href="">Edit</a> | <a  href="">Delete</a></h6></td>
                                                                            </tr><tr>
                                                                                <td><h6>3</h6></td>
                                                                                <td><h6>1323</h6></td>
                                                                                <td><h6>Bhopal</h6></td>
                                                                                <td><h6>Madhya Pradesh</h6></td>
                                                                                <td><h6><a href="">Edit</a> | <a href="">Delete</a></h6></td>
                                                                            </tr><tr>
                                                                                <td><h6>4</h6></td>
                                                                                <td><h6>1323</h6></td>
                                                                                <td><h6>Bhopal</h6></td>
                                                                                <td><h6>Madhya Pradesh</h6></td>
                                                                                <td><h6><a href="">Edit</a> | <a href="">Delete</a></h6></td>-->

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
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