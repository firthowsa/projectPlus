<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

    
</head>
<body>

<jsp:include page="header.jsp" />
<%


String title=(String)session.getAttribute("title");
String desc=(String)session.getAttribute("desc");
String rules=(String)session.getAttribute("rules");
String time=(String)session.getAttribute("time");
String prize=(String)session.getAttribute("prize");
//System.out.println(title +" what");

//out.println(desc);

%>

<header>
<nav>
  <input type="text" value="<%= title %>">
  <ul>
  
  <li> <a>Submit</a></li>
  </ul>
  
 </nav>
</header>



<div >
    <nav>
    <ul>
       <li> <a href="#" >Description</a></li>
        <li><a href="rule.jsp" >Rules</a></li>
        <li><a href="timeline.jsp" >Timeline</a></li>
       <li> <a href="prize.jsp" tabindex="-1">Prize</a></li>
       </ul>
   </nav>
</div>

   
<p> <%=desc %></p>







</body>
</html>