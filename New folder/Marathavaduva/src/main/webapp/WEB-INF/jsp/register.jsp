<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

  <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<link rel="icon" type="image/x-icon" href="images/slider/Kalash.png">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

<link href="css1/font-awesome.min.css" rel="stylesheet">
<link href="css1/common.css" rel="stylesheet">
<link href="css1/form.css" rel="stylesheet">
<link href="css1/profile.css" rel="stylesheet">
<link href="css1/search_result.css" rel="stylesheet">
<link href="css1/membership.css" rel="stylesheet">
<link href="css1/static_content.css" rel="stylesheet">
<link href="css1/gallery.css" rel="stylesheet">
<link href="css1/mainstyle.css" rel="stylesheet">
<link href="css1/media_query.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script src="./js/reg.js"></script>
</head>


<body class="ragistration" ng-app="myApp" ng-controller="myCtrl">


  <section class="wrapper">
    <div class="container">
    <h5 class="Ourvarious2">Create your profile </h5> 
  </div>
   
<form:form   modelAttribute="request"  action="./requestReg" method="post" name="MatriForm" enctype="multipart/form-data">
    <div class="container clearfix">
      <div class="registration">
        <h5 class="heading">Basic Information</h5>
        <div class="form-group row">
        
          <div class="col-sm-6">
		    <label>First Name</label>
            <form:input id="txtName" class="form-control" type="text" onkeypress="return onKeyValidate(event,alpha);"  path="name" placeholder="Enter Your First Name" required="required"/>
			 
          </div>
          <div class="col-sm-6">
		    <label>Last Name</label>
            <form:input id="txtLastName" class="form-control" type="text" onkeypress="return onKeyValidate(event,alpha);"  path="lastName" placeholder="Enter Your Last Name" required="required"/>
          </div>  
        </div>
    
        <div class="form-group row">
            <div class="col-sm-6">
              <label>Gender</label>
              <div class="clearfix"> 
                <div class="radio radio-inline">
                  <input type="radio" value="Male" id="Male" path="gender" required="required" checked="checked"/>
                  <label for="Male" class="malelable">Male</label>
                </div>
                <div class="radio radio-inline">
                  <input type="radio" value="Female" id="Female" path="gender" required="required"/>
                  <label for="Female" class="">Female</label>
                </div>   
              </div>
          </div>
          <div class="col-sm-6">
          <label>Marital Status</label>
          <div class="radio radio-inline">
            <input type="radio" id="unmarried" value="1" path="maritalStatus" checked="checked" required="required"/>
            <label for="unmarried" class="malelable">Unmarried</label>
          </div>
          <div class="radio radio-inline">  
            <input type="radio" id="widow/widower" value="2" path="maritalStatus" required="required"/>
            <label for="widow/widower" class="">Widow/Widower</label>
          </div>
          <div class="radio radio-inline">  
            <input type="radio" id="divorcee" value="3" path="maritalStatus" required="required"/>
            <label for="divorcee" class="">Divorcee</label>
          </div>
          <div class="radio radio-inline">  
            <input type="radio" id="separated" value="4" path="maritalStatus" required="required"/>
            <label for="separated" class="">Separated</label>
          </div>
        </div>
      </div>
		
	
  		  <div class="form-group row">
          <div class="col-sm-4">
            <label>Cast</label>
                <form:select data-ref-type="reg-caste" id="" class="forminpt js-religion form-control" path="caste" >
                  <form:option value="Maratha">Maratha</form:option>
				</form:select>
          </div>
          
 
          
           <div class="col-sm-4">
              <label>Sub-Cast</label>
          
               <select class="form-control" id="" path="subCaste">
           <option ng-repeat="x in subcaste" value="{{x.name}}">{{x.name}}</option>
             </select>
				   
			
				   
				   
           </div>

            <div class="col-sm-4">
               <label>Date of Birth</label>
            <form:input class="form-control" type="date" id="txtDate" path="dob" required="required" style="height: 42px;"/>
           </div>

      <!--      <div class="col-sm-4">
            <label>Sub-Cast</label>
           <select data-ref-type="reg-caste" data-sub-caste-fld-name="txtSubcaste" id="sub_caste" class="forminpt js-sub-caste form-control" name="txtSubcaste" disabled="disabled" required>
				</select>
				<input type="text" style="display:none;" data-ref-type="reg-caste" maxlength="50" size="40" id="txtSubcaste" value="" class="forminpt js-txt-sub-caste form-control" name="txtSubcaste" disabled="disabled">
           </div> -->
        </div>
        </div>
        <div class="registration">
        <h5 class="heading">New Account Information.</h5>

		<div class="form-group row">
          <div class="col-sm-6">
		  <label>Profile Created By</label>
    
    
     <select class="form-control" id="" path="profileCreatedBy">
           <option ng-repeat="x in profileCreatedBy" value="{{x.name}}">{{x.name}}</option>
             </select>
          </div>
                
       
          <div class="col-sm-6">
		  <label>Email ID</label>
            <form:input id="EMAILconfirm" class="form-control" type="email" path="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" placeholder="Enter Your Email ID" />
          </div>
                
        </div>
		
		<div class="form-group row">
         	<div class="col-sm-6">
			<label>Password</label>
            <form:input id="inputPassword" class="form-control" type="password"  path="password" placeholder="Enter New Password" required="required"/>
          </div>
          <div class="col-sm-6">
		  <label>Confirm Password</label>
            <form:input id="confirm_password" class="form-control" type="password"  path="confirm" placeholder="Confirm Password" required="required"/>
          </div>  
                
        </div>
	
		
		<div class="form-group row">
          <div class="col-sm-6">
		  <label>Mobile Number</label>
            <form:input id="txtMobile" class="form-control" type="text" minlength="10"  maxlength="10" pattern="[789][0-9]{9}" path="mobile" placeholder="Enter Your Mobile Number" />
          </div>
          <div class="col-sm-6">
		  <label>Alternate Contact Number</label>
            <form:input id="txtPhone" class="form-control" type="text" minlength="10"  maxlength="10" pattern="[789][0-9]{9}" path="phone" placeholder="Enter Alternate Contact Number"/>
          </div>
        </div>
        </div>

        <div class="registration">
        <h5 class="heading">Socio Religious Attributes </h5>
        

        <div class="form-group row">
          <div class="col-sm-6">
            <label>Gothra</label>
            <form:input id="txtGothra" class="form-control" type="text" path="gothra" placeholder="Enter Your Gothra"/>
          </div>
          <div class="col-sm-6">
           <label>Moonsign</label>
           
           
            <select class="form-control" id="" name="moonsign">
           <option ng-repeat="x in moonsign" value="{{x.name}}">{{x.name}}</option>
             </select>
           
           
           
          </div>
        </div>

        <div class="form-group row">
          <div class="col-sm-6">
          <label>Horos Match :</label>    
          <div class="radio radio-inline">
            <input type="radio" value="No" checked="checked" id="no" path="horosMatch" />
            <label for="no" class="malelable">No</label>
          </div>
          <div class="radio radio-inline">  
            <input type="radio" path="horosMatch" id="yes" value="Yes" />
            <label for="yes" class="">Yes</label>
          </div>
          
          <div class="radio radio-inline">  
            <input type="radio" path="horosMatch" id="not_applicable" value="NA" />
            <label for="not_applicable" class="">Not Applicable</label>
          </div>
      </div>
      
        <div class="col-sm-6">
          <label>Manglik</label>
           <div class="radio radio-inline">
            <input type="radio" value="No" checked="checked" id="no2" path="manglik"/>
            <label for="no2" class="malelable">No</label>
          </div>
          <div class="radio radio-inline">  
            <input type="radio" path="manglik" id="yes2" value="Yes"/>
            <label for="yes2" class="">Yes</label>
          </div>
          
          <div class="radio radio-inline">  
            <input type="radio" path="manglik" id="not_applicable2" value="NA"/>
            <label for="not_applicable2" class="">Not Applicable</label>
          </div>
        </div>
    </div>
		    
		
    		<div class="form-group row">
          <div class="col-sm-6">
		  <label>Birth Place</label>
            <form:input class="form-control" type="text" path="birthPlace"/>  
          </div>
          <div class="col-sm-6">
		  <label>Birth Time</label>
            <form:input class="form-control" type="time" path="birthTime"/>
          </div>
        </div>
        </div>
		
		
		
        <div class="registration">
    		<h5 class="heading">Physical Attributes</h5>
        <div class="form-group row">
      		<div class="col-sm-6">
            <label>Height</label>  
            
            <select class="form-control" id="" name="heigth">
           <option ng-repeat="x in heigth" value="{{x.name}}">{{x.name}}</option>
             </select>
            
               
      		
          </div>
          <div class="col-sm-6">
            <label>Weight</label>
            
             <select class="form-control" id="" name="weight">
           <option ng-repeat="x in weight" value="{{x.name}}">{{x.name}}</option>
             </select>
          
          </div>
        </div>  
         		<div class="form-group row">
    			<div class="col-sm-6">
          <label>Physical Status *</label>
          <div class="radio radio-inline">
            <input type="radio" value="No" checked="checked"  id="Pno" path="physicalStatus"/>
            <label for="Pno" class="malelable">Normal</label>
          </div>
          <div class="radio radio-inline">  
            <input type="radio" value="Yes" id="Pyes" path="physicalStatus"/>
            <label for="Pyes" class="malelable">Physically challenged</label>
          </div>
       
	   
	 
					</div>
    		<div class="col-sm-6">
           <label>Upload Photo *</label>
            <form:input type="file" path="photo"/>
        </div>
       
         
        
    </div>
 </div>

<div class="registration">
        <h5 class="heading">Education Details</h5>

    <div class="form-group row">
          <div class="col-sm-6">
      <label>Educational Area</label>
          <form:select class="form-control" id="postedby" path="educationalArea">
            <form:option value="">Select</form:option>
      
     
    </form:select>
          </div>
                
       
          <div class="col-sm-6">
      <label>Education</label>
            <form:input class="form-control" type="text" path="education" placeholder="Enter Your Education"/>
          </div>
                
        </div>
    
    <div class="form-group row">
          <div class="col-sm-6">
      <label>Occupation</label>
            <form:input class="form-control" type="text"  path="occupation" placeholder="Enter Your Occupation"/>
          </div>
          <%-- <div class="col-sm-6">
      <label>Occupation City</label>
           
              <form:select class="form-control" id="" path="occupationCity">


     
            </form:select>
          </div>  --%> 
                
        </div>
  
    
    <div class="form-group row">
          <div class="col-sm-6">
      <label>Education City</label>
           
                      <form:select class="form-control" id="" path="educationCity">
            <form:option value="">Select City</form:option>
       
                         
     
            </form:select>
          </div>
         <%--  <div class="col-sm-6">
       <label>Income/Annum</label>
            <form:input class="form-control" type="text" path="incomeExp" placeholder="Enter Expecting Annual Income"/>
          </div> --%>
        </div>

        <center>
     <%-- <div class="">
              <form:input type="checkbox" path="accept" value="I Accept" required="required"/>
              <label for="terms">I Accept the terms and Conditions</label>
            </div> --%>

</center>


        <div class="form-group buttonWrapper">
           <input type="submit" value="Submit" path="submit" class="btn btnpink loginbtn btn-lg">
        </div>
        </div>


    </div>
  </form:form>

  
  </section>
  <!--space beetwin main_wrrap & ooter-->
<!-- footer -->
	 <%@include file="footer.jsp"%>
	<!-- //footer -->



<!-- conform pswrd validation -->
    <script>
var password = document.getElementById("inputPassword")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>

<!-- //datepicker -->

<script>
$(function(){
    var dtToday = new Date();
    
    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();
    
    var maxDate = year + '-' + month + '-' + day;
    
    $('#txtDate').attr('max', maxDate);
});
</script>


  
<!-- //validation -->
<script>
var alpha = "[ A-Za-z]";
var numeric = "[0-9]"; 
var alphanumeric = "[ A-Za-z0-9]"; 

function onKeyValidate(e,charVal){
    var keynum;
    var keyChars = /[\x00\x08]/;
    var validChars = new RegExp(charVal);
    if(window.event)
    {
        keynum = e.keyCode;
    }
    else if(e.which)
    {
        keynum = e.which;
    }
    var keychar = String.fromCharCode(keynum);
    if (!validChars.test(keychar) && !keyChars.test(keychar))   {
        return false
    } else{
        return keychar;
    }
}
</script>





</body>
</html>