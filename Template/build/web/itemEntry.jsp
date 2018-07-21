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

                    <h2 class="w3_inner_tittle">Item Entry</h2>
                    <div class="graph-2 graph-form general agile_info_shadow">

                        <!-- /citymaster -->
                        <form class="form-horizontal" method="post">

                            <div class="grid_3 grid_4 w3layouts">
                                <div class="bs-example">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="form-group"> <label for="inputEmail3" class="col-sm-12 control-label">Item Code*</label>
                                                </td>
                                                <td>
                                                    <div class="col-xs-6 col-sm-7">
                                                        <div class="form-group">
                                                            <input type="text" name="field-1-3" id="field-1-3" required="true" filter="greater_than:10|less_than:15" class="form-control" data-required="Given value must be between 10 and 15">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td></td><td></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group"> <label for="inputEmail3" class="col-sm-12 control-label">Item Name*</label>
                                                </td>
                                                <td>
                                                    <div class="col-xs-6 col-sm-7">
                                                        <div class="form-group">
                                                            <input type="text" name="field-1-3" id="field-1-3" required="true" filter="greater_than:10|less_than:15" class="form-control" data-required="Given value must be between 10 and 15">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>  
                                                        <label for="selector1" class="col-sm-4 control-label">Course*</label>
                                                        <div class="col-xs-6 col-sm-7"><select name="selector1" id="selector1" class="form-control1">
                                                                <option>Select Course</option>
                                                                <option>Madhya Pradesh</option>
                                                                <option>Bihar</option>
                                                                <option>Delhi</option>
                                                                <option>UP</option>
                                                            </select></div>
                                                    </div>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group"> <label for="inputEmail3" class="col-sm-12 control-label">Item Description</label></div>
                                                </td>
                                                <td>
                                                    <div class="col-xs-6 col-sm-7">
                                                        <textarea name="field-4" id="field-4"  required="true" class="form-control"></textarea>
                                                    </div>
                                                </td>
                                                <td>

                                                    <div class="form-group"> <label for="inputEmail3" class="col-sm-4 control-label">Max Day Issue</label>


                                                        <div class="col-xs-6 col-sm-7">
                                                            <div class="form-group">
                                                                <input type="text" name="field-1-3" id="field-1-3" required="true" filter="greater_than:10|less_than:15" class="form-control" data-required="Given value must be between 10 and 15">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                            </td>
                                            </tr>
                                            <tr>
                                                <td>  </td>
                                                <td>  </td>
                                                <td><div align="center">
                                                    <label><input type="checkbox" > Library</label>
                                                    <label><input type="checkbox" > Store</label></div>  </td> 
            </tr>
                                    
                                            </tbody>
                                           </table>
                                  </div>
                            </div>
                            <div align="center">    
                                <input type="submit" name="sub-1" value="Submit" class="btn btn-primary">
                                <input type="reset" name="res-1" id="res-1" value="Reset" class="btn btn-danger">
                            </div>

                        </form>
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