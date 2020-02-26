<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import= "com.Team.Team" %>
     <%@ page import= "java.sql.*" %>
     <%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
</head>
<body>

<jsp:include page="header.jsp" />

   <% ArrayList<Team> d = (ArrayList)session.getAttribute("teams"); 
     String regno=(String)session.getAttribute("registrationNumber");
   
   
   
   for(int i=0;i<d.size();i++){ 
	   Team b = d.get(i);
	   String reg=b.getThirdReg();
	   
	  //System.out.println(regno);
	   //System.out.println(b.getThirdReg()+ " matching yoo");
   
	   if( regno == reg){
		   //out.Println("matching");
		   System.out.println(b.getThirdReg()+ " its working yaay");
		   
		   //System.out.println(" did you");
	   }
	   else{
		   System.out.println(reg+ " not working");
		   //System.out.println("  OOH NO");
		   
	   } 
	   
   }
   %>
  
  
  		
  
  

  
     <jsp:include page="footer.jsp" />

</body>
</html>