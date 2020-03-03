package Team;

import java.io.IOException;



import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class JoinCompetition
 */
@WebServlet("/JoinCompetition")
public class JoinCompetition extends HttpServlet {
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
        String url="Joins";
        int userid=(Integer)session.getAttribute("id");
        
        for(int i=0;i<p.size();i++){ 
 		   TeamModel b = p.get(i);
 		   //String team=b.getTeam_Name();
 		  int leader=b.getTeam_leader();
 		 
 		  int compe=b.getCompetition();
 		  Integer a=new Integer(compe);
 		 
 		  if(userid==leader && cid==a){
 			  url="competitors.jsp";
             // response.sendRedirect(arg0);
 			  //request.getRequestDispatcher("competitors.jsp").forward(request, response);
 			  break;
 			  
 			  }
 		  
 		  
 		  
        }
        request.getRequestDispatcher(url).forward(request, response);
      //response.sendRedirect("Joins");
	        //request.getRequestDispatcher("Joins").forward(request, response);
			 //break; 
			 return;
       
}
}
