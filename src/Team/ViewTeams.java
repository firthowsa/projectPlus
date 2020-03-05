package Team;

import java.io.IOException;


import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Team.TeamModel;
import Team.TeamDAO;


/**
 * Servlet implementation class ViewTeams
 */
@WebServlet("/ViewTeams")
public class ViewTeams extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        TeamDAO pd = new TeamDAO();
        String type=(String)session.getAttribute("type");
     
        
		
         ArrayList<TeamModel> p = pd.getAllTeams();
       // ArrayList<TeamDTO> p = pd.getData();
//         PrintWriter out=response.getWriter();
//         out.print();
//         
         
         
		
		if(p!=null ) {
			System.out.println(p.size());
			session.setAttribute("teams", p);
			if(type.equals("student"))
				
			    response.sendRedirect("teams.jsp");	
				
				else{
					 response.sendRedirect("adminteams.jsp");
				}
		   // response.sendRedirect("competition.jsp");	
		    return;
			
				
			}
				
				//request.getRequestDispatcher("index.jsp").forward(request, response);
			
	
	
	
	
	}

}
