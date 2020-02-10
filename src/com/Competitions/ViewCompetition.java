package com.Competitions;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Project.Project;
import com.Project.ProjectDao;
import com.Project.ProjectDaoImp;

/**
 * Servlet implementation class ViewCompetition
 */
@WebServlet("/ViewCompetition")
public class ViewCompetition extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        competitionDao pd = new competitionDaoImp();
     
        
		
         ArrayList<Competition> p = pd.getCompetition();
         
		System.out.println("hello ############"+ p.toString());
		if(p!=null ) {
			System.out.println(p.size());
			session.setAttribute("projects", p);
		    response.sendRedirect("competition.jsp");	
			
				
			}else {
				request.setAttribute("message7", "");
				
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
	
	
	
	
	}

}
