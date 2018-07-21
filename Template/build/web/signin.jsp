<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Esteem  An Admin Panel Category Flat Bootstrap Responsive Website Template | Sign In:: w3layouts</title>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%@include file="common/js-css.jsp" %>
    </head>
    <body>
        <!-- /pages_agile_info_w3l -->

        <div class="pages_agile_info_w3l">
            <!-- /login -->
            <div class="over_lay_agile_pages_w3ls">
                <div class="registration">

                    <div class="signin-form profile">
                        <h2>Sign in Form</h2>
                        <div class="login-form">
                            <form action="#" method="post">
                                <input type="email" name="email" placeholder="E-mail" required="">
                                <input type="password" name="password" placeholder="Password" required="">
                                <div class="tp">
                                    <input type="submit" value="SIGN IN">
                                </div>
                            </form>
                        </div>
                        <div class="login-social-grids">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            </ul>
                        </div>
                        <p><a href="signup.jsp"> Don't have an account?</a></p>

                        <h6><a href="main-page.jsp">Back To Home</a><h6>
                                </div>
                                </div>


                                <%-- Footer --%>
                                <%@include file="common/footer.jsp" %>


                                </div>
                                </div>
                                <!-- /login -->
                                <!-- //pages_agile_info_w3l -->


                                <!-- js -->

                                <script type="text/javascript" src="resources/js/jquery-2.1.4.min.js"></script>
                                <script src="resources/js/modernizr.custom.js"></script>

                                <script src="resources/js/classie.js"></script>
                                <script src="resources/js/gnmenu.js"></script>
                                <script>
                                    new gnMenu(document.getElementById('gn-menu'));
                                </script>

                                <!-- //js -->

                                <script src="resources/resources/js/screenfull.js"></script>
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
                                <script src="resources/js/snow.js"></script>
                                <script type="text/javascript">

                                    var _gaq = _gaq || [];
                                    _gaq.push(['_setAccount', 'UA-36251023-1']);
                                    _gaq.push(['_setDomainName', 'jqueryscript.net']);
                                    _gaq.push(['_trackPageview']);

                                    (function () {
                                        var ga = document.createElement('script');
                                        ga.type = 'text/javascript';
                                        ga.async = true;
                                        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                                        var s = document.getElementsByTagName('script')[0];
                                        s.parentNode.insertBefore(ga, s);
                                    })();

                                </script>
                                <script type="text/javascript" src="resources/js/bootstrap-3.1.1.min.js"></script>
                                </body>
                                </html>