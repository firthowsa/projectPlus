package com.Team;

import java.io.IOException;


import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





import javax.servlet.http.HttpSession;

import com.Student.Student;
import com.Team.Team;

/**
 * Servlet implementation class UpdateComp
 */
@WebServlet("/UpdateComp")
public class UpdateComp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		teamDao pd = new teamDao();
		
		ArrayList<Team> p = pd.getAllTeams();
		Student user = (Student) session.getAttribute("user");
		
		  String regno = user.getRegno();
		
		
      
        for(int i=0;i<p.size();i++){ 
 		   Team b = p.get(i);
 		   String reg=b.getFirstReg();
		   String regf=b.getSecReg();
		   String regt=b.getThirdReg();
		   String regth=b.getFourthReg();
		   String regfi=b.getFifthReg();
 		   String compe=b.getCompetition();
 		  // String c="";
 		   
 		    if(regno.equals(reg) || regno.equals(regf) || regno.equals(regt) || regno.equals(regth) || regno.equals(regfi) ){
 		       if(compe!= null){
			   PrintWriter out=response.getWriter();
 			   out.println(compe);
 			  out.println(regno +" "+ reg);
 			  out.println(regno +" "+ regf);
 			  out.println(regno + " " +regt);
 			  out.println(regno + " " + regth);
 			// response.sendRedirect("competitors.jsp");
 		    	//request.getRequestDispatcher("competitors.jsp").forward(request, response);
 			   return;
 			   
 		    }else{
//		    	PrintWriter out=response.getWriter();
 		    	 PrintWriter out=response.getWriter();
 	 			   out.println(compe);
 	 			  out.println(regno +" "+ reg);
 	 			 out.println(regno +" "+ regf);
 	 			 out.println(regno + " " +regt);
 	 			 out.println(regno + " " + regth);
 	 			//request.getRequestDispatcher("comp.jsp").forward(request, response);
// 
 	 			 return;
//		    	out.println(compe);
//		    	return;
// 		    	//request.getRequestDispatcher("comp.jsp").forward(request, response);
// 		    	return;
 		    }
 		    
 		    
 		    }else{
 		    	PrintWriter out=response.getWriter();
	 			   out.println(compe);
	 			  out.println(regno +" "+ reg);
	 			 out.println(regno +" "+ regf);
	 			 out.println(regno + " " +regt);
	 			 out.println(regno + " " + regth);
	 			//request.getRequestDispatcher("comp.jsp").forward(request, response);
	 			
 		    }
 		  
 	   
	
        }
	
	}

}
