<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Esteem  An Admin Panel Category Flat Bootstrap Responsive Website Template | Tables  :: w3layouts</title>
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

                            <li>Tables</li>
                        </ul>
                    </div>
                </div>
                <!-- //breadcrumbs -->

                <div class="inner_content_w3_agile_info two_in">
                    <h2 class="w3_inner_tittle">Tables</h2>
                    <!-- tables -->

                    <div class="agile-tables">
                        <div class="w3l-table-info agile_info_shadow">
                            <h3 class="w3_inner_tittle two">Basic Implementation</h3>
                            <table id="table">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Age</th>
                                        <th>Gender</th>
                                        <th>Height</th>
                                        <th>Province</th>
                                        <th>Sport</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Jill Smith</td>
                                        <td>25</td>
                                        <td>Female</td>
                                        <td>5'4</td>
                                        <td>British Columbia</td>
                                        <td>Volleyball</td>
                                    </tr>
                                    <tr>
                                        <td>John Stone</td>
                                        <td>30</td>
                                        <td>Male</td>
                                        <td>5'9</td>
                                        <td>Ontario</td>
                                        <td>Badminton</td>
                                    </tr>
                                    <tr>
                                        <td>Jane Strip</td>
                                        <td>29</td>
                                        <td>Female</td>
                                        <td>5'6</td>
                                        <td>Manitoba</td>
                                        <td>Hockey</td>
                                    </tr>
                                    <tr>
                                        <td>Gary Mountain</td>
                                        <td>21</td>
                                        <td>Male</td>
                                        <td>5'8</td>
                                        <td>Alberta</td>
                                        <td>Curling</td>
                                    </tr>
                                    <tr>
                                        <td>James Camera</td>
                                        <td>31</td>
                                        <td>Male</td>
                                        <td>6'1</td>
                                        <td>British Columbia</td>
                                        <td>Hiking</td>
                                    </tr>
                                </tbody>
                            </table>

                            <code class="js">
                                $('#table').basictable();
                            </code>
                        </div>
                        <div class="w3l-table-info agile_info_shadow">
                            <h3 class="w3_inner_tittle two">Modifying Breakpoint</h3>
                            <table id="table-breakpoint">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Age</th>
                                        <th>Gender</th>
                                        <th>Height</th>
                                        <th>Province</th>
                                        <th>Sport</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Jill Smith</td>
                                        <td>25</td>
                                        <td>Female</td>
                                        <td>5'4</td>
                                        <td>British Columbia</td>
                                        <td>Volleyball</td>
                                    </tr>
                                    <tr>
                                        <td>John Stone</td>
                                        <td>30</td>
                                        <td>Male</td>
                                        <td>5'9</td>
                                        <td>Ontario</td>
                                        <td>Badminton</td>
                                    </tr>
                                    <tr>
                                        <td>Jane Strip</td>
                                        <td>29</td>
                                        <td>Female</td>
                                        <td>5'6</td>
                                        <td>Manitoba</td>
                                        <td>Hockey</td>
                                    </tr>
                                    <tr>
                                        <td>Gary Mountain</td>
                                        <td>21</td>
                                        <td>Male</td>
                                        <td>5'8</td>
                                        <td>Alberta</td>
                                        <td>Curling</td>
                                    </tr>
                                    <tr>
                                        <td>James Camera</td>
                                        <td>31</td>
                                        <td>Male</td>
                                        <td>6'1</td>
                                        <td>British Columbia</td>
                                        <td>Hiking</td>
                                    </tr>
                                </tbody>
                            </table>

                            <code class="js">
                                $('#table-breakpoint').basictable({<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;breakpoint: 768,<br>
                                });
                            </code>
                        </div>
                        <div class="w3l-table-info agile_info_shadow">
                            <h3 class="w3_inner_tittle two">Force Responsive Off</h3>


                            <table id="table-force-off">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Age</th>
                                        <th>Gender</th>
                                        <th>Height</th>
                                        <th>Province</th>
                                        <th>Sport</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Jill Smith</td>
                                        <td>25</td>
                                        <td>Female</td>
                                        <td>5'4</td>
                                        <td>British Columbia</td>
                                        <td>Volleyball</td>
                                    </tr>
                                    <tr>
                                        <td>John Stone</td>
                                        <td>30</td>
                                        <td>Male</td>
                                        <td>5'9</td>
                                        <td>Ontario</td>
                                        <td>Badminton</td>
                                    </tr>
                                    <tr>
                                        <td>Jane Strip</td>
                                        <td>29</td>
                                        <td>Female</td>
                                        <td>5'6</td>
                                        <td>Manitoba</td>
                                        <td>Hockey</td>
                                    </tr>
                                    <tr>
                                        <td>Gary Mountain</td>
                                        <td>21</td>
                                        <td>Male</td>
                                        <td>5'8</td>
                                        <td>Alberta</td>
                                        <td>Curling</td>
                                    </tr>
                                    <tr>
                                        <td>James Camera</td>
                                        <td>31</td>
                                        <td>Male</td>
                                        <td>6'1</td>
                                        <td>British Columbia</td>
                                        <td>Hiking</td>
                                    </tr>
                                </tbody>
                            </table>

                            <code class="js">
                                $('#table-force-off').basictable({<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;forceResponsive: false,<br>
                                });
                            </code>

                        </div>
                        <div class="w3l-table-info agile_info_shadow">
                            <h3 class="w3_inner_tittle two">Max Height</h3>
                            <table id="table-max-height" class="max-height">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Age</th>
                                        <th>Gender</th>
                                        <th>Height</th>
                                        <th>Province</th>
                                        <th>Sport</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Jill Smith</td>
                                        <td>25</td>
                                        <td>Female</td>
                                        <td>5'4</td>
                                        <td>British Columbia</td>
                                        <td>Volleyball</td>
                                    </tr>
                                    <tr>
                                        <td>John Stone</td>
                                        <td>30</td>
                                        <td>Male</td>
                                        <td>5'9</td>
                                        <td>Ontario</td>
                                        <td>Badminton</td>
                                    </tr>
                                    <tr>
                                        <td>Jane Strip</td>
                                        <td>29</td>
                                        <td>Female</td>
                                        <td>5'6</td>
                                        <td>Manitoba</td>
                                        <td>Hockey</td>
                                    </tr>
                                    <tr>
                                        <td>Gary Mountain</td>
                                        <td>21</td>
                                        <td>Male</td>
                                        <td>5'8</td>
                                        <td>Alberta</td>
                                        <td>Curling</td>
                                    </tr>
                                    <tr>
                                        <td>James Camera</td>
                                        <td>31</td>
                                        <td>Male</td>
                                        <td>6'1</td>
                                        <td>British Columbia</td>
                                        <td>Hiking</td>
                                    </tr>
                                </tbody>
                            </table>

                            <code class="js">
                                $('#table-max-height').basictable({<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;tableWrapper: true<br>
                                });
                            </code>
                        </div>
                        <div class="w3l-table-info agile_info_shadow">
                            <h3 class="w3_inner_tittle two">Use Media Query Over JS Resize</h3>

                            <table id="table-no-resize">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Age</th>
                                        <th>Gender</th>
                                        <th>Height</th>
                                        <th>Province</th>
                                        <th>Sport</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Jill Smith</td>
                                        <td>25</td>
                                        <td>Female</td>
                                        <td>5'4</td>
                                        <td>British Columbia</td>
                                        <td>Volleyball</td>
                                    </tr>
                                    <tr>
                                        <td>John Stone</td>
                                        <td>30</td>
                                        <td>Male</td>
                                        <td>5'9</td>
                                        <td>Ontario</td>
                                        <td>Badminton</td>
                                    </tr>
                                    <tr>
                                        <td>Jane Strip</td>
                                        <td>29</td>
                                        <td>Female</td>
                                        <td>5'6</td>
                                        <td>Manitoba</td>
                                        <td>Hockey</td>
                                    </tr>
                                    <tr>
                                        <td>Gary Mountain</td>
                                        <td>21</td>
                                        <td>Male</td>
                                        <td>5'8</td>
                                        <td>Alberta</td>
                                        <td>Curling</td>
                                    </tr>
                                    <tr>
                                        <td>James Camera</td>
                                        <td>31</td>
                                        <td>Male</td>
                                        <td>6'1</td>
                                        <td>British Columbia</td>
                                        <td>Hiking</td>
                                    </tr>
                                </tbody>
                            </table>

                            <code class="css">
                                @media only screen and (max-width: 568px) {<br>
                                &nbsp;&nbsp;#table-no-resize thead {<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;display: none;<br>
                                &nbsp;&nbsp;}<br><br>

                                &nbsp;&nbsp;#table-no-resize tbody td {<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;border: none !important;<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;display: block;<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vertical-align: top;<br>
                                &nbsp;&nbsp;}<br><br>

                                &nbsp;&nbsp;#table-no-resize tbody td:before {<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;content: attr(data-th) ": ";<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;display: inline-block;<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;font-weight: bold;<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;width: 6.5em;<br>
                                &nbsp;&nbsp;}<br><br>

                                &nbsp;&nbsp;#table-no-resize tbody td.bt-hide {<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;display: none;<br>
                                &nbsp;&nbsp;}<br>
                                }
                            </code>

                            <code class="js">
                                $('#table-no-resize').basictable({<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;noResize: true,<br>
                                });
                            </code>
                        </div>
                        <div class="w3l-table-info agile_info_shadow">
                            <h3>Two Axis Styling</h3>
                            <table id="table-two-axis" class="two-axis">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Age</th>
                                        <th>Gender</th>
                                        <th>Height</th>
                                        <th>Province</th>
                                        <th>Sport</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Jill Smith</td>
                                        <td>25</td>
                                        <td>Female</td>
                                        <td>5'4</td>
                                        <td>British Columbia</td>
                                        <td>Volleyball</td>
                                    </tr>
                                    <tr>
                                        <td>John Stone</td>
                                        <td>30</td>
                                        <td>Male</td>
                                        <td>5'9</td>
                                        <td>Ontario</td>
                                        <td>Badminton</td>
                                    </tr>
                                    <tr>
                                        <td>Jane Strip</td>
                                        <td>29</td>
                                        <td>Female</td>
                                        <td>5'6</td>
                                        <td>Manitoba</td>
                                        <td>Hockey</td>
                                    </tr>
                                    <tr>
                                        <td>Gary Mountain</td>
                                        <td>21</td>
                                        <td>Male</td>
                                        <td>5'8</td>
                                        <td>Alberta</td>
                                        <td>Curling</td>
                                    </tr>
                                    <tr>
                                        <td>James Camera</td>
                                        <td>31</td>
                                        <td>Male</td>
                                        <td>6'1</td>
                                        <td>British Columbia</td>
                                        <td>Hiking</td>
                                    </tr>
                                </tbody>
                            </table>

                            <code class="css w3agile-css">
                                table.two-axis tr td:first-of-type {<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;background: #dff1f7;<br>
                                }<br><br>

                                @media only screen and (max-width: 568px) {<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;table.two-axis tr td:first-of-type,<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;table.two-axis tr:nth-of-type(2n+2) td:first-of-type,<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;table.two-axis tr td:first-of-type:before
                                {<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;background: #dff1f7;<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;color: #ffffff;<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;}<br><br>

                                &nbsp;&nbsp;&nbsp;&nbsp;table.two-axis tr td:first-of-type {<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;border-bottom: 1px solid #e4ebeb;<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;}<br>
                                }
                            </code>

                        </div>
                    </div>
                    <!-- //tables -->

                    <!-- /social_media-->
                    <div class="social_media_w3ls">

                        <div class="col-md-3 socail_grid_agile facebook">
                            <ul class="icon_w3_info">
                                <li><a href="#" class="wthree_facebook"> <i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li>Facebook</li>
                            </ul>
                            <ul class="icon_w3_social">
                                <li><i class="fa fa-comment-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-envelope-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-user" aria-hidden="true"></i></li>
                            </ul>
                            <div class="clearfix"></div>
                            <div class="bottom_info_social">
                                <div class="col-md-4 agile_w3l_social_media_text_img">
                                    <img src="resources/images/admin.jpg" alt="">
                                </div>
                                <div class="col-md-8 agile_w3l_social_media_text">
                                    <h4>Hurisa Joe</h4>
                                    <p>Lorem ipsum dolor sit amet</p>
                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="col-md-3 socail_grid_agile twitter">
                            <ul class="icon_w3_info">
                                <li><a href="#" class="wthree_facebook"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li>Twitter</li>
                            </ul>
                            <ul class="icon_w3_social">
                                <li><i class="fa fa-comment-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-envelope-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-user" aria-hidden="true"></i></li>
                            </ul>
                            <div class="clearfix"></div>
                            <div class="bottom_info_social">
                                <div class="col-md-4 agile_w3l_social_media_text_img">
                                    <img src="resources/images/a1.jpg" alt="">
                                </div>
                                <div class="col-md-8 agile_w3l_social_media_text">
                                    <h4>Jasmin Joe</h4>
                                    <p>Lorem ipsum dolor sit amet</p>
                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="col-md-3 socail_grid_agile gmail">
                            <ul class="icon_w3_info">
                                <li><a href="#" class="wthree_facebook"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li>Google+</li>
                            </ul>
                            <ul class="icon_w3_social">
                                <li><i class="fa fa-comment-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-envelope-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-user" aria-hidden="true"></i></li>
                            </ul>
                            <div class="clearfix"></div>
                            <div class="bottom_info_social">
                                <div class="col-md-4 agile_w3l_social_media_text_img">
                                    <img src="resources/images/a2.jpg" alt="">
                                </div>
                                <div class="col-md-8 agile_w3l_social_media_text">
                                    <h4>John Pal</h4>
                                    <p>Lorem ipsum dolor sit amet</p>
                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="col-md-3 socail_grid_agile dribble">

                            <ul class="icon_w3_info">
                                <li><a href="#" class="wthree_facebook"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                                <li>Dribbble</li>
                            </ul>
                            <ul class="icon_w3_social">
                                <li><i class="fa fa-comment-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-envelope-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-user" aria-hidden="true"></i></li>
                            </ul>
                            <div class="clearfix"></div>
                            <div class="bottom_info_social">
                                <div class="col-md-4 agile_w3l_social_media_text_img">
                                    <img src="resources/images/a4.jpg" alt="">
                                </div>
                                <div class="col-md-8 agile_w3l_social_media_text">
                                    <h4>Honey Pal</h4>
                                    <p>Lorem ipsum dolor sit amet</p>
                                </div>

                                <div class="clearfix"></div>
                            </div>

                        </div>
                        <div class="clearfix"></div>

                    </div>
                    <!-- //social_media-->
                </div>
                <!-- //inner_content_w3_agile_info-->
            </div>
            <!-- //inner_content-->


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
            <!-- tables -->

            <script type="text/javascript" src="resources/js/jquery.basictable.min.js"></script>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('#table').basictable();

                    $('#table-breakpoint').basictable({
                        breakpoint: 768
                    });

                    $('#table-swap-axis').basictable({
                        swapAxis: true
                    });

                    $('#table-force-off').basictable({
                        forceResponsive: false
                    });

                    $('#table-no-resize').basictable({
                        noResize: true
                    });

                    $('#table-two-axis').basictable();

                    $('#table-max-height').basictable({
                        tableWrapper: true
                    });
                });
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