<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Admin Panel | Admin Login :: eRevMAx</title>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%@include file="common/js-css.jsp" %>
         <script>
            function check(){
                if (document.getElementById("Username").value.trim() === "")
                {
                    alert("UserName Cannot be Space");
                    document.getElementById("Username").value = "";
                    document.getElementById("Username").focus();
                    return false;
                }
                if (document.getElementById("Password").value.trim() === "")
                {
                    alert("Password Cannot be Space");
                    document.getElementById("Password").value = "";
                    document.getElementById("Password").focus();
                    return false;
                }
            }
        </script>
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
                <div class="inner_content_w3_agile_info">

                    <div class="registration admin_agile">

                        <div class="signin-form profile admin">
                            <h2>Admin Login</h2>
                            <div class="login-form">
                                <form action="http://localhost:2018/EmpManagement/DoLogin" method="post" onsubmit="return check()">
                                    <input type="text" name="name" placeholder="Username" id="Username" required>
                                    <input type="password" name="password" placeholder="Password" id="Password" required>
                                    <div class="tp">
                                        <input type="submit" value="LOGIN">
                                    </div>

                                </form>
                            </div>
                            <h6><a href="index.jsp">Switch To Employee</a></h6>
                            <br>
                              <h5> <a href="#">Forget password? </a></h5>
                            
                            
                            
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
                                    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>        
                                    <script type="text/javascript">
                                        google.maps.event.addDomListener(window, 'load', init);
                                        function init() {
                                            var mapOptions = {
                                                zoom: 11,
                                                center: new google.maps.LatLng(40.6700, -73.9400),
                                                styles: [{"featureType": "all", "elementType": "labels.text.fill", "stylers": [{"saturation": 36}, {"color": "#000000"}, {"lightness": 40}]}, {"featureType": "all", "elementType": "labels.text.stroke", "stylers": [{"visibility": "on"}, {"color": "#000000"}, {"lightness": 16}]}, {"featureType": "all", "elementType": "labels.icon", "stylers": [{"visibility": "off"}]}, {"featureType": "administrative", "elementType": "geometry.fill", "stylers": [{"color": "#000000"}, {"lightness": 20}]}, {"featureType": "administrative", "elementType": "geometry.stroke", "stylers": [{"color": "#000000"}, {"lightness": 17}, {"weight": 1.2}]}, {"featureType": "landscape", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 20}]}, {"featureType": "poi", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 21}]}, {"featureType": "road.highway", "elementType": "geometry.fill", "stylers": [{"color": "#000000"}, {"lightness": 17}]}, {"featureType": "road.highway", "elementType": "geometry.stroke", "stylers": [{"color": "#000000"}, {"lightness": 29}, {"weight": 0.2}]}, {"featureType": "road.arterial", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 18}]}, {"featureType": "road.local", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 16}]}, {"featureType": "transit", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 19}]}, {"featureType": "water", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 17}]}]
                                            };
                                            var mapElement = document.getElementById('map');
                                            var map = new google.maps.Map(mapElement, mapOptions);
                                            var marker = new google.maps.Marker({
                                                position: new google.maps.LatLng(40.6700, -73.9400),
                                                map: map,
                                            });
                                        }
                                    </script>
                                    <script src="resources/js/prettymaps.js"></script>
                                    <script>

                                        $(function () {
                                            //default
                                            $('.map-canvas').prettyMaps({
                                                address: 'Melbourne, Australia',
                                                image: 'map-icon.png',
                                                hue: '#FF0000',
                                                saturation: -20
                                            });

                                            //red map example
                                            $('#default-map-btn').on('click', function () {
                                                $('.map-canvas').prettyMaps();
                                            });

                                            //green map example
                                            $('#green-map-btn').on('click', function () {
                                                $('.map-canvas').prettyMaps({
                                                    address: 'Melbourne, Australia',
                                                    image: 'map-icon.png',
                                                    hue: '#00FF55',
                                                    saturation: -30
                                                });
                                            });

                                            //blue map example
                                            $('#blue-map-btn').on('click', function () {
                                                $('.map-canvas').prettyMaps({
                                                    address: 'Melbourne, Australia',
                                                    image: 'map-icon.png',
                                                    hue: '#0073FF',
                                                    saturation: -30,
                                                    zoom: 16,
                                                    panControl: true,
                                                    zoomControl: true,
                                                    mapTypeControl: true,
                                                    scaleControl: true,
                                                    streetViewControl: true,
                                                    overviewMapControl: true,
                                                    scrollwheel: false,
                                                });
                                            });

                                            //grey map example
                                            $('#grey-map-btn').on('click', function () {
                                                $('.map-canvas').prettyMaps({
                                                    address: 'Melbourne, Australia',
                                                    image: 'map-icon.png',
                                                    saturation: -100,
                                                    lightness: 10
                                                });
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