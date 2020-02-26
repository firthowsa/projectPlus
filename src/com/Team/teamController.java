package com.Team;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Team.Team;
import com.Team.teamDao;


/**
 * Servlet implementation class teamController
 */
@WebServlet("/teamController")
public class teamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        teamDao pd = new teamDao();
        Team t=new Team();
        System.out.println(t.getCompetition());
        
//        String teamn=request.getParameter("teamn");
//        String freg=request.getParameter("freg");
//        String sreg=request.getParameter("sreg");
//        String treg=request.getParameter("treg");
//        String foreg=request.getParameter("foreg");
//        String fireg=request.getParameter("fireg");
//        
//        session.setAttribute("teamn", teamn);
//        session.setAttribute("freg", freg);
//        session.setAttribute("sreg", sreg);
//        session.setAttribute("treg", treg);
//        session.setAttribute("foreg", foreg);
//        session.setAttribute("teams", fireg);
     
        
		
//         ArrayList<Team> p = pd.getAllTeams();
//         
//		//System.out.println("hello ############"+ p.toString());
//		if(p!=null ) {
//			System.out.println(p.size());
//			session.setAttribute("teams", p);
//		    response.sendRedirect("teamRedirect");	
//			
//				
//			}else {
//				request.setAttribute("message7", "");
//				
//				request.getRequestDispatcher("index.jsp").forward(request, response);
//			}
	
//        if(t.getCompetition()!=null ) {
//			
//			
//		    response.sendRedirect("teamRedirect");	
//			
//				
//			}else {
				//request.setAttribute("message7", "");
				
				request.getRequestDispatcher("comp.jsp").forward(request, response);
			//}
	
	
	}
	
	
	

}
