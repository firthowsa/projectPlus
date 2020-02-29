package Team;

import java.io.IOException;


import java.io.PrintWriter;
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
 * Servlet implementation class updateCompetition
 */
@WebServlet("/updateCompetition")
public class updateCompetition extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		TeamDAO pd = new TeamDAO();
		
		String teamn=request.getParameter("teamn");
        session.setAttribute("teamn", teamn);
        
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

       
        
        
        ArrayList<TeamModel> p = pd.getAllTeams();
        session.setAttribute("teams", p);
        
       // id of the currently  logged in student
        
        int userid=(Integer)session.getAttribute("id");
        //int cid=(Integer)session.getAttribute("cid");
		// String title= (String)session.getAttribute("title");
		  
        for(int i=0;i<p.size();i++){ 
 		   TeamModel b = p.get(i);
 		   //String team=b.getTeam_Name();
 		  int leader=b.getTeam_leader();
 		 Integer l=new Integer(leader);
 		  int compe=b.getCompetition();
 		  Integer a=new Integer(compe);
 		  int teamid=b.getTeamid();
 		  
 		  if(userid==leader){
 			 request.getRequestDispatcher("competitors.jsp").forward(request, response);
 			 // pd.update(cid, teamid);
 		  }
 		   
// 		   if(l!=null){
// 			   
// 		      if(userid==leader){
// 			   
//// 		    	  if(a==null){
// 			  pd.update(cid,teamid);
// 			  request.getRequestDispatcher("competitors.jsp").forward(request, response);
// 			  //return;
// 		    	  
// 		    	  }
//// 		      else{
//// 		    	 request.getRequestDispatcher("compe.jsp").forward(request, response);
//// 		    	 
//// 		      }
// 		    	  }
// 		      
// 		   
// 		  }
// 			   PrintWriter out=response.getWriter();
// 			   out.println("<script type=\"text/javascript\">");
// 			   out.println("alert('Kindly Create a Team  ');");
// 			   out.println("location='teamSignUp.jsp';");
// 			   out.println("</script>");
// 		 
// 	
// 		 
        }
	}
}
