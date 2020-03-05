package Team;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class addParticipant
 */
@WebServlet("/addParticipant")
public class addParticipant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TeamDAO cd = new TeamDAO();
		
		HttpSession session = request.getSession();
		//Student st=(Student)session.getAttribute("user");
		//int team_leader=st.getId();
		//String team=st.getEmail();
		
	     int participant=(Integer)session.getAttribute("id");
	     //System.out.println(team_leader +   "got it yees");
		//String team = request.getParameter("team");
		int teamid = Integer.parseInt(request.getParameter("teamid"));
//		 PrintWriter out=response.getWriter();
//	     out.print(participant + "and"+ team+ "and count is"+teamid  );
		
		 
		//String submitype = request.getParameter("submit");
			
	    // TeamModel t = cd.getTeam(team_name);
	     //int user_id=t.getTeam_leader();
	    // int teamid=t.getTeamid();
	     
	     cd.insertParticipant(participant, teamid);
	   // int x=cd.count(teamid);
	     
	     String url="Joins";
	     request.getRequestDispatcher(url).forward(request, response);
	    
	     
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int tid = Integer.parseInt(request.getParameter("tid"));
		int participant=(Integer)request.getSession().getAttribute("id");
		TeamDAO cd = new TeamDAO();
		cd.insertParticipant(participant, tid);
		String url="Joins";
	    request.getRequestDispatcher(url).forward(request, response);
	}
	
}
