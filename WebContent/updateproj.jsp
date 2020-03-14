
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "com.Project.Project" %>
     
    <%@ page import= "com.Project.Project" %>
     <%@ page import= "java.sql.*" %>
     <%@ page import = "java.util.ArrayList" %>
      <%@ page import= "com.Student.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css"href="css/header.css">

<title>Project Plus|Update project Ideas</title>
</head>
<body>
<jsp:include page="header.jsp" />
 <%
 Student user = (Student)session.getAttribute("user");
 if(!user.getType().equals("admin")){
	 response.sendRedirect("projectCards.jsp");
 }
String desc=(String)session.getAttribute("desc");
String category=(String)session.getAttribute("category");
String title=(String)session.getAttribute("title");
String level=(String)session.getAttribute("level");
int pid=(Integer)session.getAttribute("pid");

 %>
  
 <div class="container"> 
 <form method="post" action="Test_Servlet">
 
 
           <div class="form-group">
            <label  class="font-weight-bold" for="exampleFormControlTextarea1">Category</label>
            <input class="form-control" name="category" value="<%=category %>" >
           </div>
           
           <div class="form-group">
            <label  class="font-weight-bold" for="exampleFormControlTextarea1">level</label>
            <input class="form-control" name="level" value="<%=level %>" >
           </div>

          
          <div class="form-group">
            <label  class="font-weight-bold" for="exampleFormControlTextarea1">Title</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="title"><%=title %></textarea>
          </div>
     
          <div class="form-group">
            <label  class="font-weight-bold" for="exampleFormControlTextarea1">Description</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="8" name="description"><%=desc %></textarea>
          </div>
           <input type="hidden" class="form-control" name="pid" value="<%=pid %>" >
     
       <input  class="btn btn-success btn-lg" type="submit" name="add" value="Save and Update"><br><br>
</form>
    </div> 
    
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


</body>
</html>