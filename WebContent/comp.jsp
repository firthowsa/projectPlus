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

String title=request.getParameter("title");
String desc=request.getParameter("desc");
String rules=request.getParameter("rules");
String timeline=request.getParameter("time");
String prize=request.getParameter("prize");

session.setAttribute("title",title);
session.setAttribute("desc",desc);
session.setAttribute("rules",rules);
session.setAttribute("time",timeline);
session.setAttribute("prize",prize);

//out.println(desc);

%>

<header>
<nav id="title">
  <input type="text" value="<%= title %>">
 <li ><a href="teamSignIn.jsp">Join Competition</a></li>
 </nav> 
 
 
</header>
<p> <%=desc %></p>


<div >
    
        <a href="#" >Description</a>
        <a href="rule.jsp" >Rules</a>
        <a href="timeline.jsp" >Timeline</a>
        <a href="prize.jsp" tabindex="-1">Prize</a>
   
</div>

   








</body>
</html>