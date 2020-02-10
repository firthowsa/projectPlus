<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import= "com.Student.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>project plus</title>
</head>
<body>
  
    <%
response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
if(session.getAttribute("firstname") == null){
response.sendRedirect("signin.jsp");
}
else{

	String reg = (String)session.getAttribute("registrationNumber");

	String level = request.getParameter("level");
	String category = request.getParameter("cat");
	String description = request.getParameter("desc");
	

	session.setAttribute("level", level);
	//session.setAttribute("reg", reg);
	session.setAttribute("category", category);
	//session.setAttribute("desc",  description);
	response.sendRedirect("ViewProjects");
	
	
}





%>

</body>
</html>