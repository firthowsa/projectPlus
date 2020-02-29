<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Competition |ProjectPlus</title>
</head>
<body>

<jsp:include page="header.jsp" />

    <form name="projectideas"  class="form2" action="competitionAdd" method="post">
 
 
      <label class="lbb ">Title</label><br><br>
  <textarea placeholder="Write your project idea" id="text" name="title" rows="4" style="overflow: hidden; word-wrap: break-word; resize: none; height: 160px; " required></textarea>  
		<br>
		
		 <label class="lbb ">Description</label><br><br>
  <textarea placeholder="Write your project idea" id="text" name="desc" rows="4" style="overflow: hidden; word-wrap: break-word; resize: none; height: 160px; " required></textarea>  
		<br>
		
		 <label class="lbb ">Rules</label><br><br>
  <textarea placeholder="Write your project idea" id="text" name="rules" rows="4" style="overflow: hidden; word-wrap: break-word; resize: none; height: 160px; " required></textarea>  
		<br>
		
		 <label class="lbb ">Timeline</label><br><br>
  <textarea placeholder="Write your project idea" id="text" name="time" rows="4" style="overflow: hidden; word-wrap: break-word; resize: none; height: 160px; " required></textarea>  
		<br>
 
 
 
 <br><br>
   <label class="lbb ">Prize</label><br><br>
  <textarea placeholder="Write your project idea" id="text" name="prize" rows="4" style="overflow: hidden; word-wrap: break-word; resize: none; height: 160px; " required></textarea>  
		<br>
 
  
 
 <input class="submit" type="submit" name="add" onClick="return validate();"value="Add"><br><br>
 
 
 </form>
</div>


    


</body>
</html>