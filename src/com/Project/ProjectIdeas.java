package com.Project;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
 * Servlet implementation class ProjectIdeas
 */
@WebServlet("/ProjectIdeas")
public class ProjectIdeas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
HttpSession session = request.getSession();
		
//		String level = (String)session.getAttribute("level");
//		String category= (String)session.getAttribute("cat");
//		String description = (String)session.getAttribute("desc");

             String level = request.getParameter("level");
             String category = request.getParameter("cat");
             String description = request.getParameter("desc");
             String title = request.getParameter("title");
             
             session.setAttribute(title, "title");
             session.setAttribute(category, "category");
//		
	    Date date = new Date();
       
	    SimpleDateFormat formatter = new SimpleDateFormat("dd-mm-yyyy hh:mm:ss");
	    
	    String strDate = formatter.format(date);
	    System.out.println(strDate);
		ProjectDao pd = new ProjectDaoImp();
//		
//	  
	    Project p = new Project();
   
	    p.setLevel(level);
        p.setCategory(category);
        p.setDescription(description);
        p.setTitle(title);
        
    		
			if(p.getDescription()!=null) {
				
			int status = pd.insertProject(p);
			
			System.out.println(status);
			
			
			response.sendRedirect("ViewProjects");
		     
				}else {
					session.setAttribute("message6", "Data not found signup if you dont have an account");
					response.sendRedirect("home.jsp");
				}
	     
	}	
}
