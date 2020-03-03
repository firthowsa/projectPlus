<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "com.Student.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>project ideas</title>



</head>
<body onload="document.registration.reset();">

<%
	Student user = (Student)session.getAttribute("user");
	if(!user.getType().equals("admin")){
		response.sendRedirect("index.jsp");
	}
%>

<jsp:include page="header.jsp" />
 <dx:BootstrapFloatingActionButton runat="server" ContainerCssSelector="#hidden-mode" InitialActionContext="c1" TextVisibilityMode="Hidden">
    <Items>
        <dx:BootstrapFABAction ActionName="a1" ContextName="c1" Text="Create Item"></dx:BootstrapFABAction>
    </Items>
</dx:BootstrapFloatingActionButton>


<div class="main4">
<p class="sign" align="right">Add Project Ideas</p>

 <form name="projectideas"  class="form2" action="ProjectIdeas" method="post">

                
  <label class="lbb ">Select level</label><br><br>
  <select class="unn " name="level">
  <option  >beginner</option>
  <option >intermediate</option>
  <option >advanced</option>
  

  </select><br><br>
  
  <label class="lbb ">Select Category</label><br><br>
  <select class="unn " name="cat">
  <option  >AI and Data Science</option>
   <option >Android</option>
  <option >Web Development</option>
  

  </select>
  
  <br><br> <label class="lbb ">Write Title</label><br><br>
  <textarea placeholder="write the project title" id="text" name="title" rows="4" style="overflow: hidden; word-wrap: break-word; resize: none; height: 160px; " required></textarea>  
		<br>
  
  <br><br> <label class="lbb ">Write Your Project idea</label><br><br>
  <textarea placeholder="Write your project idea" id="text" name="desc" rows="4" style="overflow: hidden; word-wrap: break-word; resize: none; height: 160px; "  required></textarea>  
		<br>
 
  
 
 <input class="submit" type="submit" name="add" onClick="return function();"value="Add"><br><br>
 
 
 </form>
</div>


</body>
   
</html>