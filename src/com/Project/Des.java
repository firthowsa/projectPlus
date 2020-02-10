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
 * Servlet implementation class Des
 */
@WebServlet("/Des")
public class Des extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//Project p = new Project();
		ProjectDaoImp imp = new ProjectDaoImp();
		List<Project> model = imp.getAll();
		HttpSession session = request.getSession();
		session.setAttribute("model",model);
//		PrintWriter out = response.getWriter();
//		out.print("Hellooo");
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/cont.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
