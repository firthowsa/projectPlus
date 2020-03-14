package com.Project;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Test_Servlet
 */
@WebServlet("/Test_Servlet")
public class UpdateProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category=request.getParameter("category");
		String level=request.getParameter("level");
		String title=request.getParameter("title");
		String description=request.getParameter("description");
		int pid=Integer.parseInt(request.getParameter("pid"));
		
		ProjectDao pd = new ProjectDaoImp();
	    Project p = new Project(pid,level,category,description,title);
	    
		
	    pd.update(p);	   
		response.sendRedirect("projectCards.jsp");
		     
			
   
	}

}
