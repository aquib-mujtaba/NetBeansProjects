

<%if (session.getId().equals(session.getAttribute("sid"))) {
String name=(String)session.getAttribute("sname");
%>
<div class="w3_agileits_top_nav">
    <ul id="gn-menu" class="gn-menu-main">
        <%if (session.getAttribute("userType").equals("Employee")) {%>
        <%@include file="side-menu-emp.jsp" %>
        <li class="second logo">
            
            <h1><a href="empHome.jsp"><i class="fa" aria-hidden="true"></i>eRevMax</a></h1> </li><%} else {%>
         <%@include file="side-menu-admin.jsp" %>
              <li class="second logo">
            <h1><a href="adminHome.jsp"><i class="fa" aria-hidden="true"></i>eRevMax</a></h1><%}%>
        </li>       
             <li class="dropdown profile_details_drop logo second ">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <!--<div class="profile_img">-->	
                            <!--<span class="prfil-img"><img src="resources/images/admin.jpg" alt=""> </span>--> 
                            <h1><i class="fa" aria-hidden="true"></i><%=name%></h1>
                        <!--</div>-->	
                    </a>
                    <ul class="dropdown-menu drp-mnu">
                        <li> <a href="setting.jsp"><i class="fa fa-cog"></i> Settings</a> </li> 
                        <li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
                        <li> <a href="http://localhost:2018/EmpManagement/DoLogout"><i class="fa fa-sign-out"></i> Logout</a> </li>
                    </ul>
               
        </li>
    </ul>
    <%}%>
    
</div>