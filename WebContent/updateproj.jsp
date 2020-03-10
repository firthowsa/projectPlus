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
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" />
 <% 
String desc=(String)session.getAttribute("desc");
String category=(String)session.getAttribute("category");
String title=(String)session.getAttribute("title");
String level=(String)session.getAttribute("level");
 %>
  
 <div class="texts">
   
 
  <form method="post" action="">
 
 <table class="table">
    <tbody>
        <tr>
          <th>Title</th>
            <td><input value="<%=title %>"></td>
            
        </tr>
        <tr>
          <th>Category </th>
             <td><input value="<%=category %>"></td>
        </tr>
        <tr>
          <th>Level</th>
             <td><input value="<%=level %>"></td>
        </tr>
        <tr>
          <th>Description</th>
             <td><input type="" value="<%=desc %>"></td>
        </tr>
    </tbody>
</table>
 
 
   </form>
   
    
   
  
    </div>
   
   
   <br>
  
 

  
  
  
    


</body>
</html>