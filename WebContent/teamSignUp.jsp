<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "com.Student.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"href="css/home.css">
		 <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'>
		  <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">

<title>ProjectPlus team</title>
</head>
<body>
<%
  String first=(String)session.getAttribute("first");
  //String sec=(String)session.getAttribute("sec");
  //String third=(String)session.getAttribute("third");
  //String fourth=(String)session.getAttribute("fourth");
  
  System.out.println(first +"first");
  //System.out.println(sec +"sec");
 // System.out.println(third +"third");
  //System.out.println(fourth +"fourth");
  
  /*session.setAttribute("firstname", c.getName());
			session.setAttribute("registrationNumber", c.getRegno());
			session.setAttribute("email", c.getEmail());
			session.setAttribute("password", c.getPassword());
			session.setAttribute("yearOfStudy", c.getYearOfStudy());
			*/
  Student user = (Student) session.getAttribute("user");
  String reg = user.getRegno();
  String yos = user.getYearOfStudy();
  yos = yos.toLowerCase().replace(" ", "_");  

%>

<jsp:include page="header.jsp" />
<div class="main2">
<p class="sign" align="center">Team SignUp</p>

   <form name="reg"  class="form1" action="SignUpTeam" method="post">
   
   <label class="lb ">Team Name</label>
  <input class="un " type="text" name="teamn">
  
   <label class="lb ">First Year RegNo</label>
  <input class="un " type="text" name="freg" id="1st_year">
  
   <label class="lb ">Second Year RegNo</label>
  <input class="un " type="text" name="sreg" id="2nd_year">
  
   <label class="lb ">Third Year RegNo</label>
  <input class="un " type="text" name="treg" id="3rd_year">
  
   <label class="lb ">Fourth Year RegNo</label>
  <input class="un " type="text" name=foreg id="4th_year">
  
   <label class="lb ">Fifth Student RegNo</label>
  <input class="un " type="text" name="fireg" id="5th_year">
  
   <label  class="lb ">Email</label>
  <input class="un " type="text" name="temail">
  
   <label class="lb ">Password</label>
  <input class="un " type="password" name="tpass">
  
  <input class="un " type="hidden" name="competition">
  
  <input class="submit" type="submit" name="submit" onClick="return validate();"value="create"><br><br>
 
  
  <div style="text-align: center;">
  <!--  <span>Already have a Team? </span><a href="">Login</a>-->
  </div>
  
  </div>
   </form>
</body>
<script>
	var reg = '<%=reg%>';
	var yos = '<%=yos%>';
	//alert(yos);
	document.getElementById(yos).value= reg;
	//document.getElementById(yos).disabled= true;
</script>
</html>