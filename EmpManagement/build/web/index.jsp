
<html lang="">
    <head>
        <title>Home Page | Employee Login :: eRevMAx</title>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%@include file="common/js-css.jsp" %>
        <!--new-->
        <script src="resources/js/jquery-2.1.4.min.js">
        </script>
        <style>
            body {font-family: Arial, Helvetica, sans-serif;}

            /* Full-width input fields */
            input[type=text], input[type=password] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }

            /* Set a style for all buttons */
            button {
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
            }

            button:hover {
                opacity: 0.8;
            }

            /* Extra styles for the cancel button */
            .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
            }

            /* Center the image and position the close button */
            .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
                position: relative;
            }

            img.avatar {
                width: 40%;
                border-radius: 50%;
            }

            .container {
                padding: 16px;
            }

            span.psw {
                float: right;
                padding-top: 16px;
            }

            /* The Modal (background) */
            .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
                padding-top: 60px;
            }

            /* Modal Content/Box */
            .modal-content {
                background-color: #fefefe;
                margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
                border: 1px solid #888;
                width: 80%; /* Could be more or less, depending on screen size */
            }

            /* The Close Button (x) */
            .close {
                position: absolute;
                right: 25px;
                top: 0;
                color: #000;
                font-size: 35px;
                font-weight: bold;
            }

            .close:hover,
            .close:focus {
                color: red;
                cursor: pointer;
            }

            /* Add Zoom Animation */
            .animate {
                -webkit-animation: animatezoom 0.6s;
                animation: animatezoom 0.6s
            }

            @-webkit-keyframes animatezoom {
                from {-webkit-transform: scale(0)} 
                to {-webkit-transform: scale(1)}
            }

            @keyframes animatezoom {
                from {transform: scale(0)} 
                to {transform: scale(1)}
            }

            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 300px) {
                span.psw {
                    display: block;
                    float: none;
                }
                .cancelbtn {
                    width: 100%;
                }
            }
        </style> 
        <!--<=================================================================================================================>-->
        <style>
            * {box-sizing: border-box;}
            body {font-family: Verdana, sans-serif;}
            .mySlides 
            {display: none;

            }
            img {
                vertical-align: middle;
                width:1212px;
                height: 351px;
            }

            /*/ Slideshow container /*/
            .slideshow-container {
                max-width: 1200px;

                position: relative;
                margin: auto;
            }

            /*/ Caption text /*/
            .text {
                /*color: #000;*/
                font-size: 15px;
                padding: 8px 12px;
                position: absolute;
                bottom: 8px;
                width: 100%;
                text-align: center;
            }

            /*/ Number text (1/3 etc) /*/
            .numbertext {
                color: #f2f2f2;
                font-size: 12px;
                padding: 8px 12px;
                position: absolute;
                top: 0;
            }

            /*/ The dots/bullets/indicators /*/
            .dot {
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color: #bbb;
                border-radius: 50%;
                display: inline-block;
                transition: background-color 0.6s ease;
            }

            .active {
                background-color: #717171;
            }

            /*/ Fading animation /*/
            .fade1 {
                -webkit-animation-name: fade1;
                -webkit-animation-duration: 2s;
                animation-name: fade;
                animation-duration: 2s;
            }
            #pannel1{
                padding: 7%;
                display: none;
                font-size: 100px;
                text-align: center;
                background-image: url("resources/Emp/img3.jpg");
                background-repeat: no-repeat;
                /*color: red;*/
            }

            @-webkit-keyframes fade {
                from {opacity: .4} 
                to {opacity: 1}
            }

            @keyframes fade {
                from {opacity: .4} 
                to {opacity: 1}
            }

            /*/ On smaller screens, decrease text size /*/
            @media only screen and (max-width: 300px) {
                .text {font-size: 11px}
            }
        </style>
        <!--<=================================================================================================================>-->
        <!--new end-->
        <script>
            function check() {
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
        <script>
            $(document).ready
                    (
                            function ()
                            {
                                $("#abtid").click
                                        (
                                                function () {
                                                    $("#pannel1").slideToggle(3000);


                                                }
                                        );
                            }
                    );
        </script>

    </head>
    <body>
        <!--<=========================================================================================================>-->
        <div class="slideshow-container">

            <div class="mySlides fade1">
                <div class="numbertext">1 / 4</div>
                <img src="resources/Emp/img2.jpg">
                <div class="text" style="color: #0a51e3">Manage Your Employee In Simple Way Text</div>
            </div>

            <div class="mySlides fade1">
                <div class="numbertext">2 / 4</div>
                <!--<img src="resources/Emp/img2.jpg" style="width:100px ;height: 100px">-->
                <img src="resources/Emp/img1.jpg" >
                <div class="text"  style="color: #ffffff">Caption Two</div>
            </div>

            <div class="mySlides fade1">
                <div class="numbertext">3 / 4</div>
                <img src="resources/Emp/img3.jpg" >
                <!--<img src="resources/Emp/img3.jpg" style="width:100px ;height: 100px">-->
                <div class="text"  style="color: #9f106b">Caption Three</div>
            </div>

            <div class="mySlides fade1">
                <div class="numbertext">4 / 4</div>
                <!--<img src="resources/Emp/img4.png" style="width:100px ;height: 100px">-->
                <img src="resources/Emp/img4.png" >
                <div class="text"  style="color: #0000cc">Caption Four</div>
            </div>
            <div class="mySlides fade1">
                <div class="numbertext">5/ 4</div>
                <img src="resources/Emp/img5.png" >
                <!--<img src="resources/Emp/img5.png" style="width:100px ;height: 100px">-->
                <div class="text">Caption Four</div>
            </div>

        </div>
        <br>

        <div style="text-align:center">
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span> 
        </div>

        <!--<=========================================================================================================>-->
        <%-- Menu --%>
        <%--<%@include file="common/menu.jsp" %>--%>
        <!-- /inner_content-->
        <!--<div class="inner_content">-->
        <%if (request.getParameter("login") != null) {%>
        <%! String e;%>
        <% e = (String) request.getAttribute("error"); %>
        <% if (e.equals("er")) { %>
        <br>
        <div class="alert alert-danger" role="alert">
            <strong>Oops!</strong> Invalid Credentials Try Again.
        </div>
        <%}
            }%>
            
             <%if (request.getAttribute("logout") != null) {%>
    <%if (request.getAttribute("logout").equals("out")) {%>
    <%--<%! String e; %>--%>
    <% // e=(String)request.getAttribute("error"); %>
    <% // if(e.equals("er")){ %>
    <br>
    <div class="alert alert-success" role="alert">
        <strong>Great!</strong> Logout Successfully.
    </div>
    <%}}%>
            
    <center><h2>Click for Login Form</h2>
        <div class="btn" style="display: inline "> 
            <button class="btn btn-primary" onclick="document.getElementById('id01').style.display = 'block'" style="background: #0a51e3;width:auto;border-radius: 64px;padding: 12px 65px;">Login</button>
            <button id="abtid" class="btn btn-default" style="width: auto;background: #9f106b;border-radius: 64px;padding: 12px 65px;">About</button>
        </div>
    </center>
    <div id="pannel1" style="margin-top: 10px" > 
        
        <p class="text-justify" style="color: black; font-family: cursive ;font-size: 20px">
            Employees are the backbone of any company therefore their management plays a major role in
deciding the success of an organization [1]. Employees Management Software makes it easy for
the employer to keep track of all records. This software allows the administrator to edit
employees, add new employees, transfer/promote/terminate employees. Each employee in the
database is associated with a position can be added and edited when need arises. Employees can
be transferred between positions easily without having to retype back their information in the
database. You can check to see if there are duplicate positions/employees in the database. Most
of all, the employer can assign tasks to employees and assess their progress in order to keep track
of employee performance.
<!--A flexible and easy to use Employee Management software solution for small and medium sized
companies provides modules for personnel information management thereby organization and
companies are able to manage the crucial organization asset ? people [2]. The combination of
these modules into one application assures the perfect platform for re-engineering and aligning
Human Resource processes along with the organizational goals. This system brings about an
easy way of maintaining the details of employees working in any organization.
It is simple to understand and can be used by anyone who is not even familiar with simple
employees system. It is user friendly and just asks the user to follow step by step operations by
giving easy to follow options. It is fast and can perform many operations for a company.
The goal of this project is to design and develop an employee management system to fill existing
gaps in the electronic management of employees.-->
        </p>    
    </div>
   
    <!-- /inner_content_w3_agile_info-->

    <!--<div class="inner_content_w3_agile_info">-->
    <div class="registration  admin_agilemodal modal  animate"  id="id01">
        <div class="signin-form  profile admin  ">
            <h2>Employee Login</h2>
            <div class="login-form ">

                <form action="http://localhost:2018/EmpManagement/DoLogin" method="post" onsubmit="return check()">
                    <input type="text" name="name" placeholder="Username" id="Username" required >
                    <input type="password" name="password" placeholder="Password" id="Password" required>
                    <div class="tp">
                        <input type="submit" id="sblogin" name="login" value="LOGIN">
                    </div>

                </form>
            </div>
            <h6><a href="admin.jsp">Switch To Admin</a></h6>
            <br>
            <div>
                <!--                <div class="cancelbtn">
                                    Cancel
                                    </div>-->
                <h5> <a href="#">Forget password? </a></h5>
            </div>

        </div>
        <!-- //inner_content_w3_agile_info-->
        <!--</div>-->
        <!-- //inner_content-->
        <!-- banner -->
        <%-- Footer --%>
        <script>

            // Get the modal
            var modal = document.getElementById('id01');
            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>
        <%@include file="common/footer.jsp" %>
        <!--<===============================================================================================================>-->

        <script>
            var slideIndex = 0;
            showSlides();

            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) {
                    slideIndex = 1
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                setTimeout(showSlides, 1800); // Change image every 2 seconds
            }
        </script>
        <!--<===============================================================================================================>-->
    </body>
</html>