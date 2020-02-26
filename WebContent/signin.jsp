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

<nav>
        <div class="leftmenu">
   <a href="#" class="logo"><img src="img/logo.jpg" height="70" width="100" alt="logo" ></a>
  
   </div>
        
        <ul>
             <li><a href="home.jsp">Home</a></li>
               <li><a href="signup.jsp">Sign Up</a> </li>
            
            
        </ul>
      
    </nav>


 <div class="main3">
<p class="sign" align="center">Log in</p>
 <form class="form1" action="SignInSignUp" method="post">
  
  
  <label class="lb ">Email</label>
 <input class="un " type="text" name="email">
 
  <label class="lb ">Password</label>
 <input class="un " type="password" name="pass">
  
  <input class="submit" type="submit" name="submit" value="Login"><br><br>
 <div style="text-align: center;">
 <a href="">Forgot Password</a><br><br>
<span > Don't have an account?</span>
<a href="signup.jsp">Sign Up</a></div>
  </form>
</div>
</body>
</html>