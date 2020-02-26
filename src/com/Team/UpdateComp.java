package com.Team;

import java.io.IOException;


import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.Team.Team;

/**
 * Servlet implementation class UpdateComp
 */
@WebServlet("/UpdateComp")
public class UpdateComp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		teamDao pd = new teamDao();
		
		ArrayList<Team> p = pd.getAllTeams();
		
		
      
        for(int i=0;i<p.size();i++){ 
 		   Team b = p.get(i);
 		  
 		   String compe=b.getCompetition();
 		  // String c="";
 		   
 		    if(compe!= null){
 		   
 			   PrintWriter out=response.getWriter();
 			   out.println(compe);
 			   return;
 			   
 		    }
 		    
 		   
 		  
 	   
	
        }
	
	}

}
