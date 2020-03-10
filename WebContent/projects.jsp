<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import= "com.Project.Project" %>
    <%@ page import= "com.Project.ProjectDaoImp" %>
    <%@ page import= "com.Project.ProjectDao" %>
     <%@ page import= "java.sql.*" %>
     <%@ page import = "java.util.ArrayList" %>
      <%@ page import= "com.Student.Student" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>project plus</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css"href="css/header.css">

<link rel="stylesheet" type="text/css"href="css/project.css">
</head>
<body>


 <%
response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
if(session.getAttribute("firstname") == null){
response.sendRedirect("signin.jsp");
}
Student user = (Student)session.getAttribute("user");
if(!user.getType().equals("student")){
	response.sendRedirect("index.jsp");
}

%>

<jsp:include page="header.jsp" />


   <%
  
   ProjectDao pd = new ProjectDaoImp();
   ArrayList<Project> d = pd.getAll();
   // ArrayList<Project> d = (ArrayList)session.getAttribute("projects");
   %>
  <div class="container">
  <div class="row">
   <%for(int i=0;i<d.size();i++){ %>
  <%Project b = d.get(i);
  if(b.getCategory().equals("Android")){
	  %>
	   <div class="col-lg-3">
	  <% 
	  if(b.getLevel().equals("beginner")){
      %>
  
  
  
<form method="post" action="projectDescr.jsp">
<input type="hidden" value="<%= b.getDescription() %>" name="desc">
  <input type="hidden" value="<%= b.getCategory() %>" name="category">
  <input type="hidden" value="<%= b.getLevel() %>" name="level">
  <input type="hidden" value="<%= b.getTitle() %>" name="title">
<div class="card" >
  <img class="card-img-top" src="img/android1.jpg" alt="Card image">
  <div class="card-body">
    <h4 class="card-title"><%=b.getLevel() %></h4>
    <p class="card-text"><%=b.getTitle() %></p>
  <input type="submit"  class="btn btn-primary"value="View">
  </div>
</div>
</form>

<%}else if(b.getLevel().equals("intermediate")){ %>
<form method="post" action="projectDescr.jsp">
<input type="hidden" value="<%= b.getDescription() %>" name="desc">
  <input type="hidden" value="<%= b.getCategory() %>" name="category">
  <input type="hidden" value="<%= b.getLevel() %>" name="level">
  <input type="hidden" value="<%= b.getTitle() %>" name="title">
<div class="card" >
  <img class="card-img-top" src="img/android.jpg" alt="Card image">
  <div class="card-body">
    <h4 class="card-title"><%=b.getLevel() %></h4>
    <p class="card-text"><%=b.getTitle() %></p>
    <input type="submit"  class="btn btn-primary" value="View">
  </div>
</div>
</form>

<%}else{ %>
<form method="post" action="projectDescr.jsp">
<input type="hidden" value="<%= b.getDescription() %>" name="desc">
  <input type="hidden" value="<%= b.getCategory() %>" name="category">
  <input type="hidden" value="<%= b.getLevel() %>" name="level">
  <input type="hidden" value="<%= b.getTitle() %>" name="title">
<div class="card" >
  <img class="card-img-top" src="img/index.jpg" alt="Card image">
  <div class="card-body">
    <h4 class="card-title"><%=b.getLevel() %></h4>
    <p class="card-text"><%=b.getTitle() %></p>
       <input type="submit"  class="btn btn-primary"value="View">
  </div>
</div>
</form>
<%} %>

</div>
  
 
   
  
  
 

  <%}} %>
  </div>
  </div>
  
    
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    

</body>
</html>