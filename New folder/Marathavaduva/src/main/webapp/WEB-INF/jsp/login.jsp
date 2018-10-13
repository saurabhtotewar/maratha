<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


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



</head>


<body class="ragistration">
<div class="w3l-main" id="home">


<%@include file="header.jsp"%>

</div>
<hr>

 <!-- Login Modal -->
 <!-- <div class="modal fade"> -->
  <div class="">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
         
          <h4 class="modal-title" id="myModalLabel">Member Login</h4>
        </div>
        <div class="modal-body clearfix">
          <p>So, Login if you're a member. if not, please register and <a href="register.html"> become a member. </a> </p><br>
              <div class="loginbox col-md-7">
                <form action="./login" method="post"> 
                  <div class="form-group">
                      <input id="emailid" class="form-control" type="text" name="username" placeholder="Email ID" required>
                  </div>
                  <div class="form-group">
                      <input id="exampleInputEmail3" class="form-control"  type="password" name="txtpassword" placeholder="Password" required>
                  </div>
                  <div class="buttonWrapper clearfix">
                   <!--  <input type="submit" value="Log in" class="btn btn-success"> -->
                  <input type="submit"  value = " Login"class="btn btn-success"/>
                    <a href="/forget" class="forgotlink">Forgot Password?</a>
                  </div>
                </form>
             </div>
              <div class="col-md-5">
                <div class="notmemberyet">
                  <p>Not a Member yet?</p>
                  <a href="/register" class="btn btn-primary">Register Now! (Free)</a>
                </div>
             </div>
        </div>
        <div class="modal-footer">
          
        </div>
      </div>
    </div>
  </div>    
  <br>
  <br>
  <br><br><br><br>

<!-- footer -->
 <%@include file="footer.jsp"%>
  <!-- //footer -->

</body>
</html>