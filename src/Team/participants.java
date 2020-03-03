package Team;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class participants
 */
@WebServlet("/participants")
public class participants extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TeamDAO cd = new TeamDAO();
		
		//HttpSession session = request.getSession();
		//Student st=(Student)session.getAttribute("user");
		//int team_leader=st.getId();
		//String team=st.getEmail();
		
	     //int team_leader=(Integer)session.getAttribute("id");
	     //System.out.println(team_leader +   "got it yees");
		String team_name = request.getParameter("teamn");
		
		 
		//String submitype = request.getParameter("submit");
			
	     TeamModel t = cd.getTeam(team_name);
	     int user_id=t.getTeam_leader();
	     int teamid=t.getTeamid();
	     
	     cd.insertParticipant(user_id, teamid);
	   // int x=cd.count(teamid);
	     
	     String url="Joins";
	     request.getRequestDispatcher(url).forward(request, response);
//	     PrintWriter out=response.getWriter();
//	     out.print(t.getTeamid() + "and"+t.getTeam_leader()+"and count is"  );
	     
	}

}
