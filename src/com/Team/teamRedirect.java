package com.Team;

import java.io.IOException;



import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Student.Student;

/**
 * Servlet implementation class teamRedirect
 */
@WebServlet("/teamRedirect")
public class teamRedirect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		teamDao pd = new teamDao();
	   // String title=(String)session.getAttribute("title");
	    
//	    String temail = request.getParameter("temail");
//		String tpass = request.getParameter("tpass");
		
	    //Team t = pd.getTeam(temail, tpass);
        
        ArrayList<Team> p = pd.getAllTeams();
        
        String teamn=request.getParameter("teamn");
        String freg=request.getParameter("freg");
        String sreg=request.getParameter("sreg");
        String treg=request.getParameter("treg");
        String foreg=request.getParameter("foreg");
        String fireg=request.getParameter("fireg");
        String competition=request.getParameter("competition");
        
        
        session.setAttribute("teamn", teamn);
        session.setAttribute("freg", freg);
        session.setAttribute("sreg", sreg);
        session.setAttribute("treg", treg);
        session.setAttribute("foreg", foreg);
        session.setAttribute("teams", fireg);
        session.setAttribute("competition", competition);
        
        session.setAttribute("teams", p);
     
        
		
         
		
		ArrayList<Team> d = (ArrayList)session.getAttribute("teams"); 
		Student user = (Student) session.getAttribute("user");
		
		  String regno = user.getRegno();
	     //String regno=(String)session.getAttribute("registrationNumber");
	     //String yos=(String)session.getAttribute("yearOfStudy");
	     //System.out.println(yos +"got it yees");
	     
	     
	  //PrintWriter out=response.getWriter();
	    // out.println("hello");
	   
	   
	   for(int i=0;i<d.size();i++){ 
		   Team b = d.get(i);
		   String reg=b.getFirstReg();
		   String regf=b.getSecReg();
		   String regt=b.getThirdReg();
		   String regth=b.getFourthReg();
		   String regfi=b.getFifthReg();
		   String compe=b.getCompetition();
		   
		   
		  
	   
		   if( regno.equals(reg) || regno.equals(regf) || regno.equals(regt) || regno.equals(regth) || regno.equals(regfi)){
			  
			   if(compe!= null){
			   
			   HttpSession sess = request.getSession();
			   String team = (String)sess.getAttribute("teamname");
			   String desc = (String)sess.getAttribute("title");
			   
			    
			 
			   PrintWriter out = response.getWriter();
			   out.print(team + compe);
			   
			  
			   teamDao dao = new teamDao();
			   dao.update(desc,team);
			   //request.getRequestDispatcher("competitors.jsp").forward(request, response);
			   return;
			   }
			   
			   
			   else{
				   HttpSession sess = request.getSession();
				   String team = (String)sess.getAttribute("teamname");
				   PrintWriter out = response.getWriter();
				   out.print(team + compe);
				   request.getRequestDispatcher("comp.jsp").forward(request, response);
				   return;
			   }
			    
		   }
		   
		   	   
		  
		   else{
	   
	   PrintWriter out=response.getWriter();
	   out.println("<script type=\"text/javascript\">");
	   out.println("alert('Kindly Create a Team  ');");
	   out.println("location='teamSignUp.jsp';");
	   out.println("</script>");
	     
	   
		   }
	  
	   }
	   
	}

}
