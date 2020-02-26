package com.Project;

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
 * Servlet implementation class ViewProjects
 */
@WebServlet("/ViewProjects")
public class ViewProjects extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        ProjectDao pd = new ProjectDaoImp();
        String type=(String)session.getAttribute("type");
	   
        //Project b= pd.getProj(pid);
       
         ArrayList<Project> p = pd.getAll();
         
		//System.out.println("hello ############"+ p.toString());
		if(p!=null ) {
			System.out.println(p.size());
			session.setAttribute("projects", p);
			//session.setAttribute("update", b);
			
			if(type.equals("student"))
			
		    response.sendRedirect("projects.jsp");	
			
			else{
				 response.sendRedirect("adminprojects.jsp");
			}
			
				
			}
	
	
	
	
	}

}
