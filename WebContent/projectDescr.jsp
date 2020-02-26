<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Descriptions</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
</head>
<body>

<jsp:include page="header.jsp" />


<%

String desc=request.getParameter("desc");

String t=request.getParameter("title");
//out.println(desc);

%>
<!--  
<nav>
 <ul>
 <div class="container"> 
  <div class="text-right"><br>
   <li><a href="updateproj.jsp" class="btn btn-success btn-rounded pull-left " role="button">Update</a></li>
   </div>
 </ul>
</nav>
-->


<h1><%=t %></h1>
<p><%=desc %></p>
	
</div>	
</body>
</html>

