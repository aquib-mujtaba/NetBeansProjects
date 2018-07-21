<!--
author:Aquib
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Home | ScheduleDSR </title>
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
                            <li>Schedule DSR</li>
                        </ul>
                    </div>
                </div>
                <!-- //breadcrumbs -->

                <div class="inner_content_w3_agile_info two_in">

                    <h2 class="w3_inner_tittle">Schedule DSR-(Batch)</h2>
                    <div class="graph-2 graph-form general agile_info_shadow">

                        <!-- /citymaster -->
                        <form class="form-horizontal" method="post">

                            <div class="grid_3 grid_4 w3layouts">
                                <table class="table" >
                               <div class="form-group">
                                                <label for="selector1" class="col-sm-2 control-label">Team</label>
                                                <div class="col-sm-4"><select name="selector1" id="selector1" class="form-control1">
                                                        <option>--Select Team--</option>
                                                        <option>Dolore, ab unde modi est!</option>
                                                        <option>Illum, fuga minus sit eaque.</option>
                                                        <option>Consequatur ducimus maiores voluptatum minima.</option>
                                                    </select></div>
                                                 <label for="selector1" class="col-sm-2 control-label">Batch</label>
                                                <div class="col-sm-3"><select name="selector1" id="selector1" class="form-control1">
                                                        <option>--Select Batch--</option>
                                                        <option>Dolore, ab unde modi est!</option>
                                                        <option>Illum, fuga minus sit eaque.</option>
                                                        <option>Consequatur ducimus maiores voluptatum minima.</option>
                                                    </select></div>
                                            </div>
                               <div class="form-group">
                                                <label for="selector1" class="col-sm-2 control-label">Course</label>
                                                <div class="col-sm-4"><select name="selector1" id="selector1" class="form-control1">
                                                        <option>--Select Batch First--</option>
                                                        <option>Dolore, ab unde modi est!</option>
                                                        <option>Illum, fuga minus sit eaque.</option>
                                                        <option>Consequatur ducimus maiores voluptatum minima.</option>
                                                    </select></div>
                                               
                                                <label for="selector1" class="col-sm-2 control-label">Topic</label>
                                                <div class="col-sm-3"><select name="selector1" id="selector1" class="form-control1">
                                                        <option>--Select Batch--</option>
                                                        <option>Dolore, ab unde modi est!</option>
                                                        <option>Illum, fuga minus sit eaque.</option>
                                                        <option>Consequatur ducimus maiores voluptatum minima.</option>
                                                    </select></div>
                                            
                                                
                                            </div>
                               <div class="form-group">
                                                <label for="selector1" class="col-sm-2 control-label">Subject</label>
                                                <div class="col-sm-4"><select name="selector1" id="selector1" class="form-control1">
                                                        <option>--Select course first --</option>
                                                        <option>Dolore, ab unde modi est!</option>
                                                        <option>Illum, fuga minus sit eaque.</option>
                                                        <option>Consequatur ducimus maiores voluptatum minima.</option>
                                                    </select></div>
                                            </div>
                               <div class="form-group">
                                                <label for="selector1" class="col-sm-2 control-label">Faculty</label>
                                                <div class="col-sm-4"><select name="selector1" id="selector1" class="form-control1">
                                                        <option>--Select Team First--</option>
                                                        <option>Dolore, ab unde modi est!</option>
                                                        <option>Illum, fuga minus sit eaque.</option>
                                                        <option>Consequatur ducimus maiores vnmmmmmmoluptatum minima.</option>
                                                    </select></div>
                                            </div>
                                         <div class="form-group">
                                             <label for="radio" class="col-sm-2 control-label"></label>
                                                
                                                 <div class="col-sm-8">
                                                    <div class="radio block">
                                                        <label><input type="radio" name="sch"> Schedule</label>
                                                        <label><input type="radio" name="sch" >Not Schedule</label>
                                                    </div>
                                                 </div>
                                            </div>
                               </table> 
                          </div>
                            <div align="center">    
                                 <button type="submit" class="btn btn-default fa fa-search">Search</button>
                                <button type="reset" class="btn btn-default fa fa-times">Cancel</button>
                            </div>

                        </form>
                    </div>
                      <div class="grid_3 grid_4 w3layouts">
                        <div class="bs-example">
                            <table class="table table-responsive table-striped">
                                <tbody>
                                    <tr>
                                        <td><h5 id="h5.-bootstrap-heading">Sr No<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Batch<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Subject<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Topic<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Start Date<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">End Date<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">No. Of Lecture<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Batch Type<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Faculty<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td><h5 id="h5.-bootstrap-heading">Action<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
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
                                        <td><h6>----</h6></td>
                                        <td><h6>----</h6></td>
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