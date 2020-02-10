package com.Student;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.Student.Student;
import com.Student.StudentDao;
import com.Student.StudentDaoImp;

/**
 * Servlet implementation class SignInSignUp
 */
@WebServlet("/SignInSignUp")
public class SignInSignUp extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudentDao cd = new StudentDaoImp();
		//PrintWriter out = response.getWriter();
		
		
		String regno = request.getParameter("reg");
		String password = request.getParameter("pass");
		String email= request.getParameter("email");
		String name = request.getParameter("name");
		String yos = request.getParameter("yearOfStudy");
		
	    String submitype = request.getParameter("submit");
		
		Student c = cd.getStudent(email, password);
		//System.out.println(c.getName());
		
		if(submitype.equals("Login") && c!=null && c.getName()!=null) {
			
			HttpSession session = request.getSession();

			session.setAttribute("firstname", c.getName());
			session.setAttribute("registrationNumber", c.getRegno());
			session.setAttribute("email", c.getEmail());
			session.setAttribute("password", c.getPassword());
	
			System.out.println(c.getYearOfStudy() + "yaay!");
		    response.sendRedirect("index.jsp");	
			//System.out.println(c.getYearOfStudy());
				
			}else if(submitype.equals("Register")) {
				
				
				
	            c.setRegno(regno);
	            c.setPassword(password);
	            c.setEmail(email);
				c.setYearOfStudy(yos);;
				c.setName(name);
				
				if(c.getName()!=null) {
					
				cd.insertStudent(c);
				
				request.setAttribute("message1", "Registration successful  Pliz signin to continue");
				request.getRequestDispatcher("signin.jsp").forward(request, response);
			
				}
				else
					System.out.println("No  class Student created");
	     }else {
	    	   // out.println("Username or Password incorrect");
				request.setAttribute("message", "Data not found signup if you dont have an account");
				request.getRequestDispatcher("signin.jsp").forward(request, response);
			}

}
	
}
