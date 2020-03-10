<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import= "com.Competitions.Competition" %>
     <%@ page import= "java.sql.*" %>
     <%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Plus</title>
</head>
<body>

<%
response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");

if(session.getAttribute("firstname") == null){
response.sendRedirect("signin.jsp");
}%>
<jsp:include page="header.jsp" />

   <% ArrayList<Competition> d = (ArrayList)session.getAttribute("projects"); 
   
   for(int i=0;i<d.size();i++){ 
   
   Competition b = d.get(i);
   
   %>
 
 
 
 <div class="texts">
  
  <br>
  <br>
 <form action="JoinCompetition" method="post" >
 <div class="competition">
 <input id="compe" type="submit" value="<%= b.getTitle()  %>" name="title">
 
 </div>
 
 <input type="hidden" value="<%= b.getCid()  %>" name="cid">
 <input type="hidden" value="<%=b.getDescription() %>" name="desc">
 <input type="hidden" value="<%=b.getRules()%>" name="rules">
 <input type="hidden" value="<%= b.getTimeline()%>" name="time">
 <input type="hidden" value="<%= b.getPrize() %>" name="prize">
  
 
 </form>
  
  </div>

  <%} %>
   
</body>
</html>