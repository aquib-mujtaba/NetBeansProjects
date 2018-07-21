<%-- 
    Document   : bookListLibrary
    Created on : Apr 4, 2017, 1:29:31 PM
    Author     : Aquib
--%>


<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Eis Digital | DSR Topic Master  :: w3layouts</title>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%@include file="common/js-css.jsp" %>
        <link rel="stylesheet" type="text/css" href="style.css">
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
                        
                    </div>
                </div>
                <!-- //breadcrumbs -->

                <div class="inner_content_w3_agile_info two_in">
                    <h2 class="w3_inner_tittle">Book List Library </h2>
                  <!--/forms-->
                    <div class="forms-main_agileits">

                        <div class="wthree_general graph-form agile_info_shadow ">
                            <!--<h3 class="w3_inner_tittle two">General Form </h3>-->

                            <div class="grid-1 ">
                                <div class="form-body">
                                    <form class="form-horizontal">
                                         <div class="form-group col-sm-12">
                                                 <tr>
                                                <td>
                                                    <div class="form-group"> <label for="inputEmail3" class="col-sm-12 control-label">Item Code*</label>
                                                </td>
                                                <td>
                                                    <div class="col-xs-6 col-sm-7">
                                                        <div class="form-group">
                                                            <input type="number" name="field-1-3" id="field-1-3" required="true" filter="greater_than:10|less_than:15" class="form-control" data-required="Given value must be between 10 and 15">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td></td><td></td>
                                            </tr>
                                                <label for="selector1" class="col-sm-2 control-label">Topic</label>
                                                <div class="col-sm-2"><select name="selector1" id="selector1" class="form-control1">
                                                        <option>Select Subject first</option></select></div>
                                            </div>
                                        <div class="form-group">
                                            <div class="col-sm-6">
                                                <label ><input type="checkbox" style="margin-left: 32px;margin-bottom: 20px"> Not-In</label>                                               

                                                <div class="radio-inline" style="margin-bottom:  4px"><label><input type="radio" name="display"> Subject </label></div>
                                                <div class="radio-inline"style="margin-bottom: 4px"><label><input type="radio" name="display" checked=""> Topic </label></div>
                                            </div>
                                        </div>
                                     
                            </div>
                            </form>
                        </div>
                    </div>
                                  
                        </div>
                    </div>
                    
                    <div class="col-lg-12 form-group">
                        <div class="col-md-8">
                            <div class="col-md-4 margin-left"> 
                                <input type="search" class="form-control" placeholder="Free Text Search"> 
                            </div> 
                            <div class="col-lg-offset-2 margin-left" align="left" style="padding-top: 3px">
                                <button type="Search" class="btn btn-default fa fa-search">Search</button> 
                                <button type="Reset" class="btn btn-default fa fa-undo">Reset</button> 
                               <button type="Reset" class="btn btn-default fa fa-times">Cancel</button> 

                            </div>
                        </div>

                        <!--<div class="col-lg-2" style="background-color: darkcyan"></div>-->
                        
                        <div class="col-lg-4"style="text-align: right" >
                          <!--?=  <div class="col-md-4">-->
                            <a class="agile-icon"style="padding: 3px" href="#fast-backward"><i class="fa fa-fast-backward"></i></a>
                            <a class="agile-icon"style="padding: 3px" href="#step-backward"><i class="fa fa-step-backward"></i></a>
                            <label> 1/2</label>
                            <a class="agile-icon"style="padding: 3px" href="#step-forward"><i class="fa fa-step-forward"></i></a>
                            <a class="agile-icon"style="padding: 3px" href="#fast-forward">
                                    <i class="fa fa-fast-forward"></i></a>
                            <!--</div>-->
                            <!--<div class="col-md-8">-->
                            <select names="select">
                                <option>25</option>
                                <option>Option 2</option>
                            </select>
                            <label> Total Records:5</label>
                            </div>
                        </div>

                           <%--  </div> --%>


                    <!--//set-2-->
                    <div class="wthree_general">
                        <div class="col-md-12 fallowers_agile agile_info_shadow">
                            <div class="work-progres">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                                <tr>
                                                <th>#</th>
                                                <th>Topic</th>
                                                <th>Subject</th>                                   

                                                <th>Course</th>
                                                <th>Remark</th>
                                                
                                                 <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                            <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>H1</td>
                                                <td>Hibernate</td>                                 

                                                <td>[T]</td>
                                                <td>---------------</td>
                                                
                                                <td><button type="show6" class="btn btn-default">Delete</button></td>
                                                
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Class Object Inheritance</td>
                                                <td>J2SE</td>                                 

                                                <td>Android</td>
                                                <td>------------------</td>
                                         <td><button type="show6" class="btn btn-default">Delete</button></td>
                                               
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Naming Convension</td>
                                                <td>J2SE</td>                                 

                                                <td>Android</td>
                                                <td>------------------</td>
                                                
                                                <td><button type="show6" class="btn btn-default">Delete</button></td>
                                                
                                            </tr>
                                            <tr>
                                               <td>4</td>
                                                <td>Method Overloading Overriding</td>
                                                <td>J2SE</td>                                 

                                                <td>Android</td>
                                                <td>----------------</td>
                                                
                                                <td><button type="show6" class="btn btn-default">Delete</button></td>
                                                
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>Collection Framework</td>
                                                <td>J2SE</td>                                 

                                                <td>Android</td>
                                                <td>-----------------</td>
                                                
                                                <td><button type="show6" class="btn btn-default">Delete</button></td>
                                                
                                            </tr>
                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>											
                        </div>
                    </div>                

                </div>
                <!--//forms-inner-->
            </div> 
            <!--//forms-->											   
            <div>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
    <div class="clearfix"></div>
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