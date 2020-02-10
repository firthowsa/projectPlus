<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import= "com.Project.Project" %>
     <%@ page import= "java.sql.*" %>
     <%@ page import = "java.util.ArrayList" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>project plus</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" type="text/css"href="css/project.css">
</head>
<body>


 <%
response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
if(session.getAttribute("firstname") == null){
response.sendRedirect("signin.jsp");
}%>

<jsp:include page="header.jsp" />

   <% ArrayList<Project> d = (ArrayList)session.getAttribute("projects"); %>
  
   <%for(int i=0;i<d.size();i++){ %>
    
   
   
  
  <%Project b = d.get(i); %>
  
 <div class="texts">
   
 
  <form method="post" action="projectDescr.jsp">
  
  <input type="hidden" value="<%= b.getDescription() %>" name="desc">
  
  <h4><input type="submit" id="title" value="<%= b.getTitle() %>"></h4>
 
 
   </form>
   
    <h5><%= b.getCategory()  %></h5>
  
   <h6><%= b.getLevel() %></h6>
  
    </div>
   
   
   <br>
  
 

  <%} %>
  
  
  
    
   

</body>
</html>