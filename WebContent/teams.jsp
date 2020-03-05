<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import= "Team.TeamModel" %>
     <%@ page import= "java.sql.*" %>
     <%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"href="css/team.css">
<meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="author" content="YOUR NAME HERE" />
    <link rel="icon" href="../../../../favicon.ico" />

    <title>Profile Page</title>

    <link
      rel="canonical"
      href="https://getbootstrap.com/docs/4.0/examples/sticky-footer/"
    />

    <!-- Bootstrap core CSS -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />

    <!-- Font Awesome -->
    <link
      href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      rel="stylesheet"
    />

<body>
<%
response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");

if(session.getAttribute("firstname") == null){
response.sendRedirect("signin.jsp");
}%>

<jsp:include page="header.jsp" />

   <% ArrayList<TeamModel> d = (ArrayList)session.getAttribute("teams"); 
   
   for(int i=0;i<d.size();i++){ 
   
	   TeamModel b = d.get(i);
	   //System.out.println(b.getTeam_Name());
	   
   
   %>
      
     
    <div class="container">
  <div class="row">
    <div class="col-md-3">
    <img
                src="img/avatar.png"
                alt="..."
                class="rounded-circle profile-image"
     />
     </div>
     
     <div class="col-md-3">
    <tr>
    <br><br>
    
     <form method="post" action="addParticipant">
   <a href="TeamDetails"><%=b.getTeam_Name() %></a>
   <br>
   <input type="hidden" name="teamid" value="<%=b.getTeamid() %>">
    <input type="hidden" name="team" value="<%=b.getTeam_Name() %>">
   
   <br>
    
     </ul>
     
     </div>
     
     <div class="col-md-3">
     <br><br>
      
    <input type="submit" class="btn btn-success" value="Join ">
    </form>
     </div>
  </div>
</div>
      
   <%} %>
   
</body>
<script>
function relocate_home()
{
     location.href = "participants";
} 
</script>
</html>