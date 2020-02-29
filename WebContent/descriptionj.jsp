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

  
  <form action="updateCompetition" method="post">
  <nav>
  <ul>
  <li><input type="text" value="<%= title %>"></li><br><br>
 <li ><input type="submit" value="Join Competition" ></li>
</ul>
</nav>
</form>
<div >
    <nav>
    <ul>
       <li> <a href="descriptionj.jsp" >Description</a></li>
       <li> <a href="rulej.jsp" >Rules</a></li>
        <li><a href="timelinej.jsp" >Timeline</a></li>
        <li><a href="prizej.jsp" tabindex="-1">Prize</a></li>
    </ul>    
   </nav>
</div>

</header>
<p> <%=desc %></p>




   








</body>
</html>