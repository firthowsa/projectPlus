package com.Competitions;

import java.io.IOException;

import java.text.SimpleDateFormat;
import java.util.Date;

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
 * Servlet implementation class competitionAdd
 */
@WebServlet("/competitionAdd")
public class competitionAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
				

		             String title = request.getParameter("title");
		             String description = request.getParameter("desc");
		             String rules = request.getParameter("rules");
		             String timeline = request.getParameter("time");
		             String prize = request.getParameter("prize");
		             String category = request.getParameter("category");
//				
			    Date date = new Date();
		       
			    SimpleDateFormat formatter = new SimpleDateFormat("dd-mm-yyyy hh:mm:ss");
			    
			    String strDate = formatter.format(date);
			    System.out.println(strDate);
				competitionDao cd = new competitionDaoImp();
//				
//			  
			    Competition c = new  Competition();
		   
			   c.setTitle(title);
			   c.setDescription(description);
			   c.setRules(rules);
			   c.setTimeline(timeline);
			   c.setPrize(prize);
			   c.setCategory(category);
		       
		        
		    		
					if(c.getTitle()!=null) {
						
					int status = cd.insertCompetition(c);
					
					System.out.println(status);
					
					session.setAttribute("message5", "Complaint has been sent");
					response.sendRedirect("index.jsp");
				     
						}else {
							session.setAttribute("message6", "Data not found signup if you dont have an account");
							response.sendRedirect("home.jsp");
						}
			     
			}	

}
