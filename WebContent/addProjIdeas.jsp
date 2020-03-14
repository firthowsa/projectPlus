<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "com.Student.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css"href="css/header.css">
<title>project ideas</title>



</head>
<body onload="document.registration.reset();">

<%
response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
if(session.getAttribute("firstname") == null){
response.sendRedirect("signin.jsp");
}
	Student user = (Student)session.getAttribute("user");
	if(!user.getType().equals("admin")){
		response.sendRedirect("projectCards.jsp");
	}
%>

<jsp:include page="header.jsp" />
 <div class="container">

<div class="main4">
<p class="h1"><u>ADD PROJECT IDEAS</u></p>

 <form   name="projectideas"  class="form2" action="ProjectIdeas" method="post">

  <div class="form-group">
    <label  class="font-weight-bold" for="exampleFormControlInput1">Select level</label>
    <select class="form-control" id="exampleFormControlSelect1" name="level">
      <option  >beginner</option>
      <option >intermediate</option>
      <option >advanced</option>
    </select>
  </div>              
 
 <div class="form-group">
    <label  class="font-weight-bold" for="exampleFormControlInput1">Select Category</label>
    <select class="form-control" id="exampleFormControlSelect1" name="cat">
      <option  >AI and Data Science</option>
      <option >Android</option>
      <option >Web Development</option>
    </select>
  </div>  
  
  
  <div class="form-group">
    <label class="font-weight-bold" for="exampleFormControlTextarea1">Write project Title</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="title"  required></textarea>
  </div>
  
  <div class="form-group">
    <label  class="font-weight-bold" for="exampleFormControlTextarea1">Write Project Description</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="desc"  required></textarea>
  </div>
  
 <input  class="btn btn-success btn-lg" type="submit" name="add" onClick="return function();"value="Add"><br><br>
 
 
 </form>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
   
</html>