package com.Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Description_Servlet
 */
@WebServlet("/Desc")
public class Desc extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		Project p = new Project();
		int id = p.getPid();
		PrintWriter out = response.getWriter();
		//out.print(id);
		
		String title=request.getParameter("title");
		String desc=request.getParameter("desc");
		String rules=request.getParameter("rules");
		String timeline=request.getParameter("time");
		String prize=request.getParameter("prize");
		
		ProjectDaoImp imp = new ProjectDaoImp();
		List<Project> model = imp.getDescription(id);
		HttpSession session = request.getSession();
		session.setAttribute("model",model);
		
		session.setAttribute("title",title);
		session.setAttribute("desc",desc);
		session.setAttribute("rules",rules);
		session.setAttribute("time",timeline);
		session.setAttribute("prize",prize);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/projectDescr.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
