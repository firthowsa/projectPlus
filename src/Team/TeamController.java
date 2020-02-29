package Team;

import java.io.IOException;






import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import Team.TeamModel;
import Team.TeamDAO;

/**
 * Servlet implementation class TeamController
 */
@WebServlet("/TeamController")
public class TeamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TeamDAO cd = new TeamDAO();
		
		HttpSession session = request.getSession();
		//Student st=(Student)session.getAttribute("user");
		//int team_leader=st.getId();
		//String team=st.getEmail();
		
	     int team_leader=(Integer)session.getAttribute("id");
	     //System.out.println(team_leader +   "got it yees");
		String team_name = request.getParameter("teamn");
		
		 
		String submitype = request.getParameter("submit");
			
	     TeamModel t = cd.getTeam(team_name);
	     
//	     PrintWriter out=response.getWriter();
//	     out.print(team_leader );
	     
	     if(submitype.equals("create")) {
				
				t.setTeam_Name(team_name);
				t.setTeam_leader(team_leader);
				
				if(t.getTeam_Name()!=null) {
					
				cd.insertTeam(team_name, team_leader);
				
				
				request.getRequestDispatcher("signin.jsp").forward(request, response);
				
				return;
				}
				
				else{
					System.out.println("No  class Student created");
	             }
				
	     }
	     	    
	     
	     else {
	    	   
				request.getRequestDispatcher("signin.jsp").forward(request, response);
			}
	     
	}
}
	
