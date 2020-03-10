<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>projectplus</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css"href="css/header.css">

<style type="text/css">
    .bs-example{
        margin: 20px;
    }
    .navbar{
        margin-bottom: 1rem;
    }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-dark bg-company-red sticky-top" >
  <a href="home.jsp" class="logo"><img src="img/logo.jpg" height="70" width="100" alt="logo" ></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>

  <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
  
  
  <div  class="float-right">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="projectCards.jsp">Project Ideas <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="CompetitionCards.jsp">Competition</a>
        <!-- <a class="nav-link" href="ViewCompetition">Competition</a> -->
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Help</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.jsp">Log out</a>
      </li>
      
      <li class="nav-item avatar dropdown">
        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-55" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false">
          <img src="img/avatar.png" class="rounded-circle z-depth-0" 
width="50" height="50"   
            alt="avatar image">
        </a>
        <div class="dropdown-menu dropdown-menu-lg-right dropdown-secondary"
          aria-labelledby="navbarDropdownMenuLink-55">
          <a class="dropdown-item" href="#">Edit Profile</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Log Out</a>
        </div>
      </li>
      
    </ul>
    
    </div>
    
  </div>
</nav>
<!-- 
    <nav>
        <div class="leftmenu">
   <a href="#" class="logo"><img src="img/logo.jpg" height="70" width="100" alt="logo" ></a>
  
   </div>
        
        <ul>
               <li><a href="ViewProjects">ProjectIdeas</a></li>
               <li><a href="ViewCompetition">Competitions</a></li>
               <li><a href="winners.jsp">winners</a> </li>
               <li><a href="ViewTeams">team</a> </li>
               <li><a href="logout.jsp">log out</a> </li>
            
            
        </ul>
      
    </nav>
 -->
  <script type="text/javascript">
   const currentLocation=location.href;
   const menuItem=document.querySelectorAll('a');
   const menuLength=menuItem.length;
   
   for(let i= 0;i<menuLength;i++){
	   if(menuItem[i].href===currentLocation){
		   menuItem[i].className="active";
	   }
   }
   
</script>  
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  
</body>
</html>