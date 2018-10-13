<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
    <%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<link rel="icon" type="image/x-icon" href="images/slider/Kalash.png">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<!-- <link href="css2/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link href="css2/font-awesome.css" rel="stylesheet"> 

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

<!-- datatable -->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.17/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/responsive/2.2.2/js/dataTables.responsive.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
	<script src="https://cdn.datatables.net/select/1.2.6/js/dataTables.select.min.js"></script>
	<script src="https://editor.datatables.net/extensions/Editor/js/dataTables.editor.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.17/css/jquery.dataTables.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.2/css/responsive.dataTables.min.css">
	<link rel="stylesheet" type="text/css" href="https://editor.datatables.net/extensions/Editor/css/editor.dataTables.min.css">



	<!-- <link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/font-awesome.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="all">
	<link href="css/easy-responsive-tabs.css" rel="stylesheet" type="text/css" media="all" /> -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link href="css2/font-awesome.css" rel="stylesheet"> 

<link href="css2/style.css" rel='stylesheet' type='text/css' />
</head>
<body >
<%@include file="header2.jsp"%>
<hr>

<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
      <ul>
        <a href="index.jsp"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">Matches</li>
      </ul>
   </div>

<div class="col-md-3 match_right">

	<div class="profile_search1">
	   <form>
		  <input type="text" class="m_1" name="ne" size="30" required="" placeholder="Enter Profile ID :">
		  <input type="submit" value="Go">
	   </form>
   </div>
   <section class="slider">
	 <h3>Advance Search</h3>
	 <div class="flexslider">
		 <form>	
   <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Gender : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Marital Status : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select>
            <option value="Unmarried">Unmarried</option>
            <option value="Widow/Widower">Widow/Widower</option>
            <option value="Divorcee">Divorcee</option>
            <option value="Separated">Separated</option>
           
           
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Manglik : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select>
             <option value="No">No</option>
      <option value="Yes">Yes</option>
     
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
 
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Native Place : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select>
            <option value="">State</option>
            <option value="">Japan</option>
            <option value="">Kenya</option>
            <option value="">Dubai</option>
            <option value="">Italy</option>
            <option value="">Greece</option> 
            <option value="">Iceland</option> 
            <option value="">China</option> 
            <option value="">Doha</option> 
            <option value="">Irland</option> 
            <option value="">Srilanka</option> 
            <option value="">Russia</option> 
            <option value="">Hong Kong</option> 
            <option value="">Germany</option>
            <option value="">Canada</option>  
            <option value="">Mexico</option> 
            <option value="">Nepal</option>
            <option value="">Norway</option> 
            <option value="">Oman</option>
            <option value="">Pakistan</option>  
            <option value="">Kuwait</option> 
            <option value="">Indonesia</option>  
            <option value="">Spain</option>
            <option value="">Thailand</option>  
            <option value="">Saudi Arabia</option> 
            <option value="">Poland</option> 
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Education : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select>
             <option value="Graduate">Graduate</option>
      <option value="Post Graduate">Post Graduate</option>
      <option value="Doctor">Doctor</option>
      <option value="Engineer">Engineer</option>
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
 <!--  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Mother Tongue : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select>
            <option value="">English</option>
            <option value="">French</option>
            <option value="">Telugu</option>
            <option value="">Bengali</option>
            <option value="">Bihari</option>
            <option value="">Hindi</option> 
            <option value="">Koshali</option> 
            <option value="">Khasi</option> 
            <option value="">Tamil</option> 
            <option value="">Urdu</option> 
            <option value="">Manipuri</option> 
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
 -->
<!--   <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Age : </label>
	<div class="col-sm-7 form_radios">
	  <div class="col-sm-5 input-group1">
        <input class="form-control has-dark-background" name="28" id="slider-name" placeholder="28" type="text" required="">
      </div>
      <div class="col-sm-5 input-group1">
        <input class="form-control has-dark-background" name="40" id="slider-name" placeholder="40" type="text" required="">
      </div>
      <div class="clearfix"> </div>
	</div>
	<div class="clearfix"> </div>
  </div> -->
  
  	<input type="submit" class="form-control" value="Find Right Person" style="background-color: #c32143;color: #ece0e0;">
 </form>
	  </div>
   </section>
  
     </div>

  <div class="col-md-9 profile_left1">
  	<h1>Recently Viewed Profile</h1>
    <div class="profile_top">
    
     <c:forEach var="request" items="${request}">
     <h1> Profile ID ${request.id}</h1>  
      <div class="col-sm-3 profile_left-top">
	    	<img src="${request.photo}" class="img-responsive" alt=""/>
	    </div>
       
	    <div class="col-sm-3">
	      <ul class="login_details1">
			 <li>Last Login : 5 days ago</li>
			 <li><p>"Vivah Darbar dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor." More....</p></li>
		  </ul>
	    </div>
	    <div class="col-sm-6">
	    	        <table class="table_working_hours">
                            <% int i = 1; %>
                                  	 
                                <tr class="opened">
                                <td class="day_label1">First Name :</td>
                                <td class="day_value">${request.firstName}</td>
                                </tr>
                                
                                <tr class="opened">
                                <td class="day_label1">Last Name :</td>
                                <td class="day_value">${request.lastName}</td>
                                </tr>
                                
                                <tr class="opened">
                                <td class="day_label1">Marital Status :</td>
                                <td class="day_value">${request.maritalStatus}</td>
                                </tr>
                                
                                <tr class="opened">
                                <td class="day_label1">Subcaste :</td>
                                <td class="day_value">${request.subCaste}</td>
                                </tr>
                                
                                 <tr class="opened">
                                <td class="day_label1">Date of Birth :</td>
                                <td class="day_value">${request.dob}</td>
                                </tr>
                                
                                 <tr class="opened">
                                <td class="day_label1">Education :</td>
                                <td class="day_value">${request.education}</td>
                                </tr>
                                
                                 <tr class="opened">
                                <td class="day_label1">Occupation :</td>
                                <td class="day_value">${request.occupation}</td>
                                </tr>
                                
                                 <tr class="opened">
                                <td class="day_label1">Height :</td>
                                <td class="day_value">${request.height}</td>
                                </tr>
                                
                                 <tr class="opened">
                                <td class="day_label1">Weight :</td>
                                <td class="day_value">${request.weight}</td>
                                </tr>
                                    
                                 

                               
                              
			   
		   </table>
		   <div class="buttons">
			   <div class="vertical">Send Mail</div>
			   <div class="vertical">Shortlisted</div>
			   <div class="vertical">Send Interest</div>
		   </div>
		   
		   <br>
		    
		    
	    </div>
	    <div class="clearfix"> </div>
	    
	    </c:forEach>
    </div>
   
    
   </div>

     <div class="clearfix"> </div>
  </div>
</div>





<!-- footer -->
 <%@include file="footer.jsp"%>
	<!-- //footer -->

</body>
</html>	