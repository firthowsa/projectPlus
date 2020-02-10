<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>projectplus</title>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
</head>
<body>



<jsp:include page="header.jsp" />

    
   <form method="get" action="Desc">
   
  	<table>
  		<thead>
  			<th>Title</th>
  			<th>Level</th>
  			<th>Category</th><br/>
  			<th>Description</th>
  		</thead>
  		
  		<tbody>
  			<c:forEach var="model" items="${model}">
  				<tr>
  					<td>${model.title}</td>
  					<td>${model.level}</td>
  					<td>${model.category}</td>
  					<td>${model.description}</td>
  				</tr>
  			</c:forEach>
  		</tbody>
  	</table>
 
  
 <div class="texts">
 
 
  
   <br>
  
  </div>
  </form>
  
  
    
   

</body>
</html>