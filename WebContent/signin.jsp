<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>project Plus</title>
<link rel="stylesheet" type="text/css"href="css/home.css">
		 <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'>
		  <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">

</head>
<body>

<jsp:include page="header1.jsp" />


 <div class="main3">
<p class="sign" align="center">Log in</p>
 <form class="form1" action="SignInSignUp" method="post">
  
  
  <label class="lb ">Email</label>
 <input class="un " type="text" name="email">
 
  <label class="lb ">Password</label>
 <input class="un " type="password" name="pass">
  
 
  <div class="d-flex justify-content-around">
        <div>
            <!-- Remember me -->
            <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="defaultLoginFormRemember">
                <label class="custom-control-label" for="defaultLoginFormRemember">Remember me</label>
            </div>
        </div>
        <div>
            <!-- Forgot password -->
            <a href="" class="password">Forgot password?</a>
        </div>
    </div>
     <input class="submit" type="submit" name="submit" value="Login"><br><br>
 <div style="text-align: center;">
 
<span > Don't have an account?</span>
<a href="signup.jsp" class="password">Sign Up</a></div>
  </form>
</div>



</body>
</html>