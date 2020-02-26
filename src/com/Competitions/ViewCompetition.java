package com.Competitions;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Competitions.Competition;
import com.Competitions.competitionDao;
import com.Competitions.competitionDaoImp;

/**
 * Servlet implementation class ViewCompetition
 */
@WebServlet("/ViewCompetition")
public class ViewCompetition extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        competitionDao pd = new competitionDaoImp();
        String type=(String)session.getAttribute("type");
     
        
		
         ArrayList<Competition> p = pd.getCompetition();
         
		
		if(p!=null ) {
			System.out.println(p.size());
			session.setAttribute("projects", p);
			if(type.equals("student"))
				
			    response.sendRedirect("competition.jsp");	
				
				else{
					 response.sendRedirect("admincompetition.jsp");
				}
		   // response.sendRedirect("competition.jsp");	
		    return;
			
				
			}
				
				request.getRequestDispatcher("index.jsp").forward(request, response);
			
	
	
	
	
	}

}
