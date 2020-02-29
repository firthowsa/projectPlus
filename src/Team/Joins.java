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

/**
 * Servlet implementation class Joins
 */
@WebServlet("/Joins")
public class Joins extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		TeamDAO pd = new TeamDAO();
		
		String teamn=request.getParameter("teamn");
        session.setAttribute("teamn", teamn);
        
        //int cid=(Integer)session.getAttribute("cid");
//        String title=(String)session.getAttribute("title");
//        String desc=(String)session.getAttribute("desc");
//        String rules=(String)session.getAttribute("rules");
//        String time=(String)session.getAttribute("time");
//        String prize=(String)session.getAttribute("prize");
//       
        
        
        ArrayList<TeamModel> p = pd.getAllTeams();
        session.setAttribute("teams", p);
        
        int userid=(Integer)session.getAttribute("id");
        
        for(int i=0;i<p.size();i++){ 
 		   TeamModel b = p.get(i);
 		   //String team=b.getTeam_Name();
 		  int leader=b.getTeam_leader();
 		 
 		  int compe=b.getCompetition();
 		  Integer a=new Integer(compe);
 		 
 		  if(userid==leader && a!=null){
 			  PrintWriter out=response.getWriter();
			  out.print(leader +"this is a teamleader" + "\n" +a);
 			  request.getRequestDispatcher("view.jsp").forward(request, response);
 			  
 			  break;
 			  }
 		  
 		  
        }
        request.getRequestDispatcher("comp.jsp").forward(request, response);
		  
}

}
