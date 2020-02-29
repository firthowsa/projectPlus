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
/*
int cid=Integer.parseInt(request.getParameter("cid"));
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
session.setAttribute("cid",cid);
*/
int cid=(Integer)session.getAttribute("cid");
String title=(String)session.getAttribute("title");
String desc=(String)session.getAttribute("desc");
String rules=(String)session.getAttribute("rules");
String time=(String)session.getAttribute("time");
String prize=(String)session.getAttribute("prize");
//out.println(desc);
 

%>

<header>

  
  <nav>
  <ul>
  <li><input type="text" value="<%= title %>"></li><br><br>
 
</ul>
</nav>

<div >

    <nav>
    <ul>
       <li> <a href="descriptionv.jsp" >Description</a></li>
       <li> <a href="rulev.jsp" >Rules</a></li>
        <li><a href="timelinev.jsp" >Timeline</a></li>
        <li><a href="prizev.jsp" tabindex="-1">Prize</a></li>
    </ul>    
   </nav>
</div>

</header>
<p> <%=prize %></p>




   








</body>
</html>