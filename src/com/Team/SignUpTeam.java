package com.Team;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Team.Team;
import com.Team.teamDao;


/**
 * Servlet implementation class SignUpTeam
 */
@WebServlet("/SignUpTeam")
public class SignUpTeam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		teamDao cd = new teamDao();
		//PrintWriter out = response.getWriter();
		
		
		String team = request.getParameter("teamn");
		String freg = request.getParameter("freg");
		String sreg= request.getParameter("sreg");
		String treg = request.getParameter("treg");
		String foreg = request.getParameter("foreg");
		String fireg = request.getParameter("fireg");
		String temail = request.getParameter("temail");
		String tpass = request.getParameter("tpass");
		
	    String submitype = request.getParameter("submit");
		
	     Team t = cd.getTeam(temail, tpass);
		//System.out.println(c.getName());
		
		if(submitype.equals("Login") && t!=null && t.getTeamName()!=null) {
			
			HttpSession session = request.getSession();

			session.setAttribute("team", t.getTeamName());
			
	
			//System.out.println(t.getEmail() + "yaay!");
		    response.sendRedirect("comp.jsp");	
			//System.out.println(c.getYearOfStudy());
				
			}else if(submitype.equals("create")) {
				
				
				//t.setCid(cid);
				t.setFirstReg(freg);
				t.setSecReg(sreg);
				t.setThirdReg(treg);
				t.setFourthReg(foreg);
				t.setFifthReg(fireg);
				t.setTeamName(team);
				t.setEmail(temail);
				t.setPassword(tpass);
				
				System.out.println(t.getTeamName());
	            
				
				if(t.getTeamName()!=null) {
					
				cd.insertTeam(t);
				System.out.println(t.getFifthReg()+ t.getFirstReg() +t.getSecReg()+t.getThirdReg()+ t.getFourthReg());
				request.setAttribute("message1", "Registration successful  Pliz signin to continue");
				request.getRequestDispatcher("home.jsp").forward(request, response);
				
				return;
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
