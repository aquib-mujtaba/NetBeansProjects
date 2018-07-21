
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Admin | Add Employee</title>
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
                <div class="inner_content_w3_agile_info two_in">
                    <h2 class="w3_inner_tittle">Inputs</h2>
                    <!--/forms-->
                    <div class="forms-main_agileits">
                        <!--/forms-inner-->
                        <div class="forms-inner">
                            <div class="wthree_general graph-form agile_info_shadow ">
                                <h3 class="w3_inner_tittle two"> Add New Employee</h3>
                                <div class="grid-1 ">
                                    <div class="form-body">
                                        <form class="form-horizontal" method="POST" action="http://localhost:2018/EmpManagement/AddEmployee">
                                            <div class="form-group">
                                                <label for="focusedinput" class="col-sm-2 control-label">Employee Name</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control1" id="EmployeeName" name="EmployeeName" placeholder="Employee Name">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">Email Address</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">							
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-envelope-o"></i>
                                                        </span>
                                                        <input type="text" class="form-control1 icon" id="EmailAddress" name="EmailAddress" placeholder="Email Address">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group mb-n">
                                                <label for="phoneNumber" class="col-sm-2 control-label label-input-lg">Phone Number</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control1 input-lg" id="phoneNumber" name="phoneNumber" placeholder="Phone Number">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword" class="col-sm-2 control-label">Password</label>
                                                <div class="col-sm-8">
                                                    <input type="password" class="form-control1" id="inputPassword" name="inputPassword" placeholder="Password">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">Password</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-key"></i>
                                                        </span>
                                                        <input type="password" class="form-control1 icon" id="inputPassword2" name="inputPassword2" placeholder="Password">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="dept" class="col-sm-2 control-label">Select Department</label>
                                                <div class="col-sm-8">
                                                    <select name="dept" id="dept" class="form-control1">
                                                        <option value="HR401">Human Resource (HR401)</option>
                                                        <option value="LO301">Live OS (LO301)</option>
                                                        <option value="RC201">RTConnect (RC201)</option>
                                                        <option value="RT101">Rate Tiger (RT101)</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="focusedinput" class="col-sm-2 control-label">Employee Id</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control1" id="EmpId" name="EmpId" placeholder="Employee ID">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="focusedinput" class="col-sm-2 control-label">Age</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control1" id="age" name="age" placeholder="Age of Employee">
                                                </div>
                                            </div>
                                            <div class="form-group mb-n">
                                                <label for="BasicSalary" class="col-sm-2 control-label label-input-lg">Basic Salary</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control1 input-lg" id="BasicSalary" name="BasicSalary" placeholder="Basic Salary">
                                                </div>
                                            </div>
                                                <div class="form-group">
                                                <label for="radio" class="col-sm-2 control-label">User Type</label>
                                                <div class="col-sm-8">
                                                    <div class="radio-inline"><label><input type="radio" name="empType" value="Employee" checked="" > Employee</label></div>
                                                    <div class="radio-inline"><label><input type="radio" name="empType" value="Admin"> Admin</label></div>
                                                </div>
                                            </div>
                                                <div class="form-group">
                                                <label for="radio" class="col-sm-2 control-label">Status of User</label>
                                                <div class="col-sm-8">
                                                    <div class="radio-inline"><label><input type="radio" name="status" value="actv" checked="" > Active</label></div>
                                                    <div class="radio-inline"><label><input type="radio" name="status" value="dsb">Disable</label></div>
                                                </div>
                                            </div>
                                            <div class="col-sm-offset-2"> 
                                                <label for="exampleInputFile">File input</label> 
                                                <input type="file" id="photo" name="photo"> 
                                                <p class="help-block">Attache Photo Of Employee</p> 
                                            </div>
                                            <div class="col-sm-offset-2"> <button type="submit" class="btn btn-default">Add Employee</button> 
                                                <button type="reset" class="btn btn-default" style="margin-left: 11%; background-color:  #de3333">Cancel</button> 
                                            </div> 
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!--//forms-inner-->
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