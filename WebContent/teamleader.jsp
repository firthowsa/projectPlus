<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"href="css/home.css">
		 <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'>
		  <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">

</head>
<body>


<jsp:include page="header.jsp" />
<div class="main2">
<p class="sign" align="center">Team SignUp</p>

   <form name="reg"  class="form1" action="TeamController" method="post">
   
   <label class="lb ">Team Name</label>
  <input class="un " type="text" name="teamn">
  
  
  <input class="submit" type="submit" name="submit" onClick="return validate();"value="create"><br><br>
 
  
  <div style="text-align: center;">
  <!--  <span>Already have a Team? </span><a href="">Login</a>-->
  </div>
  
  </div>
   </form>

</body>
</html>