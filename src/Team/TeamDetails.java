package Team;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Competitions.Competition;

import Team.TeamModel;
import Team.TeamDAO;

import com.Competitions.competitionDaoImp;


/**
 * Servlet implementation class TeamDetails
 */
@WebServlet("/TeamDetails")
public class TeamDetails extends HttpServlet implements Serializable {
	private static final long serialVersionUID = 1L;
       
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		competitionDaoImp cDao = new competitionDaoImp();
		TeamDAO tDao = new TeamDAO();
		
		ArrayList<Competition>  cs = cDao.getCompetition();
		for(Competition c: cs) {
			System.out.println("Competition name :"+c.getTitle());
			System.out.println("Participating teams..");
			ArrayList<TeamModel> teams = cDao.getParticipatingTeamsFromDB(c);
			for(TeamModel tm: teams) {
				tDao.getParticipantsFromDatabase(tm);
				System.out.println(tm);
//				PrintWriter out=response.getWriter();
//				out.print(tm);
			}
		}
		
	}

}
