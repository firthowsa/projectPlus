<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import= "Team.TeamModel" %>
     <%@ page import= "java.sql.*" %>
     <%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Join Competition</title>
</head>
<body>
<center><h2>Join An Already Created Team</h2></center>
	<%
		ArrayList<TeamModel> vacantTeams =  (ArrayList<TeamModel>)request.getAttribute("teamsWithVacancy");
	%>
	
	<table>
	<tr>
	 	<th>Team Name</th>
	 	<th>Number of Members Joined</th>
	 	<th>Join</th>
	</tr>
	
	<%
	  for(TeamModel t: vacantTeams) {
	%>
	
	<tr>
	 	<td><%= t.getTeam_Name()%></td>
	 	<td><%= t.getMembers().size() %></td>
	 	<td>
	 	<form action="addParticipant" method="post"> 
	 		<input name="teamid" type="number" hidden value="<%=t.getTeamid()%>">
	 		<input type="submit" value="Join this team">
	 	</form>
	 	
	 	
	 	
	 	</td>
	 
	</tr>
	<%
	  }
	%>
	</table>
	
	<a href="teamleader.jsp">Create Own Team</a>
	
</body>
</html>