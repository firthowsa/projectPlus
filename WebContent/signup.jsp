<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project plus signup</title>

<link rel="stylesheet" type="text/css"href="css/home.css">
		 <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'>
		  <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">


</head>
<body onload="document.registration.name.focus();">

   <nav>
        <div class="leftmenu">
   <a href="#" class="logo"><img src="img/logo.jpg" height="70" width="100" alt="logo" ></a>
   
  
   </div>
        
        <ul>
             <li><a href="home.jsp">Home</a></li>
               <li><a href="signin.jsp">Sign In</a> </li>
            
            
        </ul>
      
    </nav>

<div class="main2">
<p class="sign" align="center">Register</p>

 <form name="registration"  class="form1" action="SignInSignUp" method="post">
 
 
 <label class="lb ">Name</label>
 <input class="un " type="text" name="name">
 
 <label class="lb ">Registration Number</label>
 <input class="un " type="text" name="reg">
 
 
  <label class="lb ">Year of study</label>
  <select class="un " name="yearOfStudy">
  <option  >1st year</option>
  <option >2nd year</option>
  <option >3rd year</option>
  <option >4th year</option>

  </select>
 
  <label class="lb ">Email</label>
 <input class="un " type="text" name="email">
 
  <label class="lb ">Password</label>
 <input class="un " type="password" name="pass">
 
  <label class="lb ">Confirm Password</label>
 <input class="un " type="password" name="passc">
 
 <input class="submit" type="submit" name="submit" onClick="return validate();"value="Register"><br><br>
 
 <div style="text-align: center;">
<span > Already have an account?</span>
<a href="signin.jsp">Login</a></div>
 </form>
</div>

</body>

<script type="text/javascript"   src="https://cdnjs.cloudflare.com/ajax/libs/jsSHA/2.0.2/sha.js">
    function validate(){
    
    var name = document.registration.name.value;
	var reg = document.registration.reg.value;
	var email = document.registration.email.value;
	var pass = document.registration.pass.value;
	var passc = document.registration.passc.value;
	
	
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var letters = /^[A-Za-z]+$/;
	var regi = /\w\d{2}\/\d{5}\/\d{2}/;
	
	
	if(name == ""){
    	 alert("enter Firstname");
    	 document.registration.name.focus();
    	 return false;
     }
     
	
	
	if(letters.test(name) == false)
		{
	
		alert("name must have alphabet characters only");
		 document.registration.name.focus();
		return false;
		}
	
	if(pass == ""){
   	 alert("enter password");
   	 document.registration.pass.focus();
   	 return false;
    }
	
	if(pass != passc){
		alert("password must be same");
		return false;
	}
	
	 if(pass.length<8){  
		  alert("Password must be at least 8 characters long.");  
		  return false;  
		  }  
	
	if(email == ""){
	   	 alert("enter email");
	   	 document.registration.email.focus();
	   	 return false;
	    }
		
	if(mailformat.test(email) == false)
	{

	alert("Please enter a valid e-mail address  eg 'abc@mail.com'");
	 document.registration.name.focus();
	return false;
	}
	
	
	
     
    
     if(reg == ""){
    	 alert("enter Registration number");
    	 document.registration.reg.focus();
    	 return false;
     }
     else if(regi.test(reg)){
     	return true;
     }
     else
 	{
 	alert("Registration must be of the form 'S13/15326/16'");
 	document.registration.reg.focus();
 	return false;
 	}
     
     
     
     
     
    
     
    }
    
    </script>

 
</html>