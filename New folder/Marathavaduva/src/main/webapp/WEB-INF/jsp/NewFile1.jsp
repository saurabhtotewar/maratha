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


</head>


<body class="ragistration">
<%@include file="header.jsp"%>
<hr>

  <section class="wrapper">
    <div class="container">
    <h5 class="Ourvarious2">Create your profile </h5> 
  </div>
   
<form:form   modelAttribute="request"  action="./regmaratha" method="post" name="MatriForm">
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
                <form:select data-ref-type="reg-caste" id="" class="forminpt js-religion form-control" path="caste" />
                  <form:option value="Maratha">Maratha</form:option>
				</select>
          </div>
          
           <div class="col-sm-4">
              <label>Sub-Cast</label>
          
               <form:select class="form-control" id="" path="subCaste"/>
           
            <form:option value="Deshmukh">Deshmukh</form:option>
            <form:option value="96 Kuli" selected="selected">96 Kuli</form:option>
            <form:option value="Maratha">Maratha</form:option>
            <form:option value="Kunbi">Kunbi</form:option>
             <form:option value="Deshmukh Maratha">Deshmukh Maratha</form:option>
            <form:option value="96 Kuli Maratha">96 Kuli Maratha</form:option>
            <form:option value="Tirale Kunbi">Tirale Kunbi</form:option>
     
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
          <form:select class="form-control" id="postedby" path="profileCreatedBy"/>
            <form:option value="">Select</form:option>
            <form:option value="Self">Self</form:option>
		  <form:option value="Parents">Parents</form:option>
		  <form:option value="Brother">Brother</form:option>
      <form:option value="Sister">Sister</form:option>
      <form:option value="Friend">Friend</form:option>
		  <form:option value="Relative">Relative</form:option>
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
           
            <form:select id="txtMoon" class="form-control" path="moonsign"/>
                        <form:option value="Does not matter">Does not matter</form:option>
                        <form:option value="Mesh (Aries)">Mesh (Aries)</form:option>
                        <form:option value="Vrishabh (Taurus)">Vrishabh (Taurus)</form:option>
                        <form:option value="Mithun (Gemini)">Mithun (Gemini)</form:option>
                        <form:option value="Karka (Cancer)">Karka (Cancer)</form:option>
                        <form:option value="Simha (Leo)">Simha (Leo)</form:option>
                        <form:option value="Kanya (Virgo)">Kanya (Virgo)</form:option>
                        <form:option value="Tula (Libra)">Tula (Libra)</form:option>
                        <form:option value="Vrischika (Scorpio)">Vrischika (Scorpio)</form:option>
                        <form:option value="Dhanu (Sagittarious)">Dhanu (Sagittarious)</form:option>
                        <form:option value="Makar (Capricorn)">Makar (Capricorn)</form:option>
                        <form:option value="Kumbha (Aquarious)">Kumbha (Aquarious)</form:option>
                        <form:option value="Meen (Pisces)">Meen (Pisces)</form:option>
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
      		<form:select class="form-control" path="heigth"/>
                                <form:option selected="" value="">- Select -</form:option>
                                <form:option value="1">Below 4ft</form:option>
                                <form:option value="2">4ft 6in</form:option>
                                <form:option value="3">4ft 7in</form:option>
                                <form:option value="4">4ft 8in</form:option>
                                <form:option value="5">4ft 9in</form:option>
                                <form:option value="6">4ft 10in</form:option>
                                <form:option value="7">4ft 11in</form:option>
                                <form:option value="8">5ft</form:option>
                                <form:option value="9">5ft 1in</form:option>
                                <form:option value="10">5ft 2in</form:option>
                                <form:option value="11">5ft 3in</form:option>
                                <form:option value="12">5ft 4in</form:option>
                                <form:option value="13">5ft 5in</form:option>
                                <form:option value="14">5ft 6in</form:option>
                                <form:option value="15">5ft 7in</form:option>
                                <form:option value="16">5ft 8in</form:option>
                                <form:option value="17">5ft 9in</form:option>
                                <form:option value="18">5ft 10in</form:option>
                                <form:option value="19">5ft 11in</form:option>
                                <form:option value="20">6ft</form:option>
                                <form:option value="21">6ft 1in</form:option>
                                <form:option value="22">6ft 2in</form:option>
                                <form:option value="23">6ft 3in</form:option>
                                <form:option value="24">6ft 4in</form:option>
                                <form:option value="25">6ft 5in</form:option>
                                <form:option value="26">6ft 6in</form:option>
                                <form:option value="27">6ft 7in</form:option>
                                <form:option value="28">6ft 8in</form:option>
                                <form:option value="29">6ft 9in</form:option>
                                <form:option value="30">6ft 10in</form:option>
                                <form:option value="31">6ft 11in</form:option>
                                <form:option value="32">7ft</form:option>
                                <form:option value="33">Above 7ft</form:option>
                              </select>
          </div>
          <div class="col-sm-6">
            <label>Weight</label>
           <form:select class="form-control" path="weight"/>
                                <form:option selected="selected" value="0">- Select -</form:option>
                                <form:option value="41 kg">41 kg</form:option>
                                <form:option value="42 kg">42 kg</form:option>
                                <form:option value="43 kg">43 kg</form:option>
                                <form:option value="44 kg">44 kg</form:option>
                                <form:option value="45 kg">45 kg</form:option>
                                <form:option value="46 kg">46 kg</form:option>
                                <form:option value="47 kg">47 kg</form:option>
                                <form:option value="48 kg">48 kg</form:option>
                                <form:option value="49 kg">49 kg</form:option>
                                <form:option value="50 kg">50 kg</form:option>
                                <form:option value="51 kg">51 kg</form:option>
                                <form:option value="52 kg">52 kg</form:option>
                                <form:option value="53 kg">53 kg</form:option>
                                <form:option value="54 kg">54 kg</form:option>
                                <form:option value="55 kg">55 kg</form:option>
                                <form:option value="56 kg">56 kg</form:option>
                                <form:option value="57 kg">57 kg</form:option>
                                <form:option value="58 kg">58 kg</form:option>
                                <form:option value="59 kg">59 kg</form:option>
                                <form:option value="60 kg">60 kg</form:option>
                                <form:option value="61 kg">61 kg</form:option>
                                <form:option value="62 kg">62 kg</form:option>
                                <form:option value="63 kg">63 kg</form:option>
                                <form:option value="64 kg">64 kg</form:option>
                                <form:option value="65 kg">65 kg</form:option>
                                <form:option value="66 kg">66 kg</form:option>
                                <form:option value="67 kg">67 kg</form:option>
                                <form:option value="68 kg">68 kg</form:option>
                                <form:option value="69 kg">69 kg</form:option>
                                <form:option value="70 kg">70 kg</form:option>
                                <form:option value="71 kg">71 kg</form:option>
                                <form:option value="72 kg">72 kg</form:option>
                                <form:option value="73 kg">73 kg</form:option>
                                <form:option value="74 kg">74 kg</form:option>
                                <form:option value="75 kg">75 kg</form:option>
                                <form:option value="76 kg">76 kg</form:option>
                                <form:option value="77 kg">77 kg</form:option>
                                <form:option value="78 kg">78 kg</form:option>
                                <form:option value="79 kg">79 kg</form:option>
                                <form:option value="80 kg">80 kg</form:option>
                                <form:option value="81 kg">81 kg</form:option>
                                <form:option value="82 kg">82 kg</form:option>
                                <form:option value="83 kg">83 kg</form:option>
                                <form:option value="84 kg">84 kg</form:option>
                                <form:option value="85 kg">85 kg</form:option>
                                <form:option value="86 kg">86 kg</form:option>
                                <form:option value="87 kg">87 kg</form:option>
                                <form:option value="88 kg">88 kg</form:option>
                                <form:option value="89 kg">89 kg</form:option>
                                <form:option value="90 kg">90 kg</form:option>
                                <form:option value="91 kg">91 kg</form:option>
                                <form:option value="92 kg">92 kg</form:option>
                                <form:option value="93 kg">93 kg</form:option>
                                <form:option value="94 kg">94 kg</form:option>
                                <form:option value="95 kg">95 kg</form:option>
                                <form:option value="96 kg">96 kg</form:option>
                                <form:option value="97 kg">97 kg</form:option>
                                <form:option value="98 kg">98 kg</form:option>
                                <form:option value="99 kg">99 kg</form:option>
                                <form:option value="100 kg">100 kg</form:option>
                               
                              </select>
          </div>
        </div>  
        <div class="form-group row">
          <div class="col-sm-6">
            <label>Blood Group</label>
         <form:select id="txtBlood" class="form-control" path="bloodGroup"/>
                                <form:option selected="" value="">- Select -</form:option>
                                <form:option value="A+">A+</form:option>
                                <form:option value="A-">A-</form:option>
                                <form:option value="AB+">AB+</form:option>
                                <form:option value="AB-">AB-</form:option>
                                <form:option value="B+">B+</form:option>
                                <form:option value="B-">B-</form:option>
                                <form:option value="O+">O+</form:option>
                                <form:option value="O-">O-</form:option>
                              </select>
          </div>

          <div class="col-sm-6">
            <label>Complexion</label>
             <form:select id="txtComplexion" class="form-control" path="complexion"/>
                                <form:option selected="" value="">- Select -</form:option>
                                <form:option value="Very Fair">Very Fair</form:option>
                                <form:option value="Fair">Fair</form:option>
                                <form:option value="Wheatish">Wheatish</form:option>
                                <form:option value="Wheatish Medium">Wheatish Medium</form:option>
                                <form:option value="Wheatish Brown">Wheatish Brown</form:option>
                                <form:option value="Dark">Dark</form:option>
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
          <form:select class="form-control" id="postedby" path="educationalArea"/>
            <form:option value="">Select</form:option>
      <form:option value="Graduate">Graduate</form:option>
      <form:option value="Post Graduate">Post Graduate</form:option>
      <form:option value="Doctor">Doctor</form:option>
      <form:option value="Engineer">Engineer</form:option>
     
    </select>
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
          <div class="col-sm-6">
      <label>Occupation City</label>
           
              <form:select class="form-control" id="" path="occupationCity"/>
            <form:option value="">Select City</form:option>
            <form:option value="Mumbai"> Mumbai</form:option>
            <form:option value="Pune">Pune</form:option>
            <form:option value="Nagpur">Nagpur</form:option>
            <form:option value="Nashik">Nashik</form:option>
            <form:option value="Vasai-Virar"> Vasai-Virar</form:option>
            <form:option value="Aurangabad">Aurangabad</form:option>
            <form:option value="Solapur">Solapur</form:option>
            <form:option value="Dhule ">Dhule </form:option>
            <form:option value="Amravati "> Amravati </form:option>
            <form:option value="Malegaon">Malegaon</form:option>
            <form:option value="Kolhapur">Kolhapur</form:option>
            <form:option value="Nanded">Nanded</form:option>
            <form:option value=" Sangli">   Sangli</form:option>
            <form:option value="Bhiwandi-Nizampur">Bhiwandi-Nizampur</form:option>
            <form:option value="Akola">Akola</form:option>
            <form:option value="Latur">Latur</form:option>
            <form:option value="Ahmednagar"> Ahmednagar</form:option>
            <form:option value="Jalgaon">Jalgaon</form:option>
            <form:option value="Ichalkaranji">Ichalkaranji</form:option>
            <form:option value="Chandrapur">Chandrapur</form:option>
             <form:option value="Parbhani">Parbhani</form:option> 
             <form:option value="Jalna">Jalna</form:option>
              <form:option value="Bhusawal ">Bhusawal </form:option>
               <form:option value="Panvel">Panvel</form:option>
                <form:option value="Satara">Satara</form:option>
                 <form:option value="Beed">Beed</form:option>
                  <form:option value="Yavatmal">Yavatmal</form:option>
                   <form:option value="Kamptee">Kamptee</form:option>
                    <form:option value="Gondia">Gondia</form:option>
                     <form:option value="Barshi">Barshi</form:option>
                      <form:option value=" Achalpur"> Achalpur</form:option>
                       <form:option value="Osmanabad">Osmanabad</form:option>
                        <form:option value="Nandurbar">Nandurbar</form:option>
                         <form:option value="Wardha">Wardha</form:option>
                          <form:option value="Udgir">Udgir</form:option>

     
            </select>
          </div>  
                
        </div>
  
    
    <div class="form-group row">
          <div class="col-sm-6">
      <label>Education City</label>
           
                      <form:select class="form-control" id="" path="educationCity"/>
            <form:option value="">Select City</form:option>
            <form:option value="Mumbai"> Mumbai</form:option>
            <form:option value="Pune">Pune</form:option>
            <form:option value="Nagpur">Nagpur</form:option>
            <form:option value="Nashik">Nashik</form:option>
            <form:option value="Vasai-Virar"> Vasai-Virar</form:option>
            <form:option value="Aurangabad">Aurangabad</form:option>
            <form:option value="Solapur">Solapur</form:option>
            <form:option value="Dhule ">Dhule </form:option>
            <form:option value="Amravati "> Amravati </form:option>
            <form:option value="Malegaon">Malegaon</form:option>
            <form:option value="Kolhapur">Kolhapur</form:option>
            <form:option value="Nanded">Nanded</form:option>
            <form:option value=" Sangli">   Sangli</form:option>
            <form:option value="Bhiwandi-Nizampur">Bhiwandi-Nizampur</form:option>
            <form:option value="Akola">Akola</form:option>
            <form:option value="Latur">Latur</form:option>
            <form:option value="Ahmednagar"> Ahmednagar</form:option>
            <form:option value="Jalgaon">Jalgaon</form:option>
            <form:option value="Ichalkaranji">Ichalkaranji</form:option>
            <form:option value="Chandrapur">Chandrapur</form:option>
             <form:option value="Parbhani">Parbhani</form:option> 
             <form:option value="Jalna">Jalna</form:option>
              <form:option value="Bhusawal ">Bhusawal </form:option>
               <form:option value="Panvel">Panvel</form:option>
                <form:option value="Satara">Satara</form:option>
                 <form:option value="Beed">Beed</form:option>
                  <form:option value="Yavatmal">Yavatmal</form:option>
                   <form:option value="Kamptee">Kamptee</form:option>
                    <form:option value="Gondia">Gondia</form:option>
                     <form:option value="Barshi">Barshi</form:option>
                      <form:option value=" Achalpur"> Achalpur</form:option>
                       <form:option value="Osmanabad">Osmanabad</form:option>
                        <form:option value="Nandurbar">Nandurbar</form:option>
                         <form:option value="Wardha">Wardha</form:option>
                          <form:option value="Udgir">Udgir</form:option>
                         
     
            </select>
          </div>
          <div class="col-sm-6">
      <label>Income/Annum</label>
            <form:input class="form-control" type="text" path="income" placeholder="Enter Your Annual Income"/>
          </div>
        </div>
        </div>

  <div class="registration">
        <h5 class="heading">Expectation Details</h5>

    <div class="form-group row">
          <div class="col-sm-6">
      <label>Preferred City</label>
          <form:select class="form-control" path="preferredCity"/>
             <form:option value="">Select City</form:option>
            <form:option value="Mumbai"> Mumbai</form:option>
            <form:option value="Pune">Pune</form:option>
            <form:option value="Nagpur">Nagpur</form:option>
            <form:option value="Nashik">Nashik</form:option>
            <form:option value="Vasai-Virar"> Vasai-Virar</form:option>
            <form:option value="Aurangabad">Aurangabad</form:option>
            <form:option value="Solapur">Solapur</form:option>
            <form:option value="Dhule ">Dhule </form:option>
            <form:option value="Amravati "> Amravati </form:option>
            <form:option value="Malegaon">Malegaon</form:option>
            <form:option value="Kolhapur">Kolhapur</form:option>
            <form:option value="Nanded">Nanded</form:option>
            <form:option value=" Sangli">   Sangli</form:option>
            <form:option value="Bhiwandi-Nizampur">Bhiwandi-Nizampur</form:option>
            <form:option value="Akola">Akola</form:option>
            <form:option value="Latur">Latur</form:option>
            <form:option value="Ahmednagar"> Ahmednagar</form:option>
            <form:option value="Jalgaon">Jalgaon</form:option>
            <form:option value="Ichalkaranji">Ichalkaranji</form:option>
            <form:option value="Chandrapur">Chandrapur</form:option>
             <form:option value="Parbhani">Parbhani</form:option> 
             <form:option value="Jalna">Jalna</form:option>
              <form:option value="Bhusawal ">Bhusawal </form:option>
               <form:option value="Panvel">Panvel</form:option>
                <form:option value="Satara">Satara</form:option>
                 <form:option value="Beed">Beed</form:option>
                  <form:option value="Yavatmal">Yavatmal</form:option>
                   <form:option value="Kamptee">Kamptee</form:option>
                    <form:option value="Gondia">Gondia</form:option>
                     <form:option value="Barshi">Barshi</form:option>
                      <form:option value=" Achalpur"> Achalpur</form:option>
                       <form:option value="Osmanabad">Osmanabad</form:option>
                        <form:option value="Nandurbar">Nandurbar</form:option>
                         <form:option value="Wardha">Wardha</form:option>
                          <form:option value="Udgir">Udgir</form:option>
     
    </select>
          </div>
                
       
          <div class="col-sm-6">
          <label>Manglik</label>
           <form:input path="manglikExp"/>  
        </div>
                
        </div>
    
    <div class="form-group row">
          <div class="col-sm-6">
        <label>Height</label>     
          <form:select  class="form-control" path="heightExp"/>
                                <form:option selected="" value="">- Select -</form:option>
                                <form:option value="1">Below 4ft</form:option>
                                <form:option value="2">4ft 6in</form:option>
                                <form:option value="3">4ft 7in</form:option>
                                <form:option value="4">4ft 8in</form:option>
                                <form:option value="5">4ft 9in</form:option>
                                <form:option value="6">4ft 10in</form:option>
                                <form:option value="7">4ft 11in</form:option>
                                <form:option value="8">5ft</form:option>
                                <form:option value="9">5ft 1in</form:option>
                                <form:option value="10">5ft 2in</form:option>
                                <form:option value="11">5ft 3in</form:option>
                                <form:option value="12">5ft 4in</form:option>
                                <form:option value="13">5ft 5in</form:option>
                                <form:option value="14">5ft 6in</form:option>
                                <form:option value="15">5ft 7in</form:option>
                                <form:option value="16">5ft 8in</form:option>
                                <form:option value="17">5ft 9in</form:option>
                                <form:option value="18">5ft 10in</form:option>
                                <form:option value="19">5ft 11in</form:option>
                                <form:option value="20">6ft</form:option>
                                <form:option value="21">6ft 1in</form:option>
                                <form:option value="22">6ft 2in</form:option>
                                <form:option value="23">6ft 3in</form:option>
                                <form:option value="24">6ft 4in</form:option>
                                <form:option value="25">6ft 5in</form:option>
                                <form:option value="26">6ft 6in</form:option>
                                <form:option value="27">6ft 7in</form:option>
                                <form:option value="28">6ft 8in</form:option>
                                <form:option value="29">6ft 9in</form:option>
                                <form:option value="30">6ft 10in</form:option>
                                <form:option value="31">6ft 11in</form:option>
                                <form:option value="32">7ft</form:option>
                                <form:option value="33">Above 7ft</form:option>
                              </select>
          </div>
          <div class="col-sm-6">
       <label>Education</label>
          <form:select class="form-control" id="postedby" path="educationExp"/>
            <form:option value="">Select</form:option>
      <form:option value="Graduate">Graduate</form:option>
      <form:option value="Post Graduate">Post Graduate</form:option>
      <form:option value="Doctor">Doctor</form:option>
      <form:option value="Engineer">Engineer</form:option>
     
    </select>
          </div>  
                
        </div>
  
    
    <div class="form-group row">
          <div class="col-sm-6">
      <label>Occupation</label>
            <form:input class="form-control" type="text"  path="occupationExp"/>
          </div>
          <div class="col-sm-6">
       <label>Income/Annum</label>
            <form:input class="form-control" type="text" path="incomeExp" placeholder="Enter Expecting Annual Income"/>
          </div>
        </div>

        <center>
     <div class="">
              <form:input type="checkbox" path="accept" value="I Accept" required="required"/>
              <label for="terms">I Accept the terms and Conditions</label>
            </div>

</center>


        <div class="form-group buttonWrapper">
           <form:input type="submit" value="Submit" path="submit" class="btn btnpink loginbtn btn-lg"/>
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