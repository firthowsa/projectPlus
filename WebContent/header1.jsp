<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap 4 Static Navbar with Dropdown and Search Form</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
    .bs-example{
        margin: 20px;
    }
</style>
</head>
<body>
<div class="bs-example">
    <nav class="navbar navbar-expand-md navbar-light bg-light">
        <div class="leftmenu">
   <a href="#" class="logo"><img src="img/logo.jpg" height="70" width="100" alt="logo" ></a>
  
   </div>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
            <div class="navbar-nav">
                
                
                
             <!--   <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Competitions</a>
                    <div class="dropdown-menu">
                        <a href="#" class="dropdown-item">AI and Data Science</a>
                        <a href="#" class="dropdown-item">Android</a>
                        <a href="#" class="dropdown-item">Web Development</a>
                    </div>
                </div>
            </div>
            
            <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">ProjectIdeas</a>
                    <div class="dropdown-menu">
                        <a href="#" class="dropdown-item">AI and Data Science</a>
                        <a href="#" class="dropdown-item">Android</a>
                        <a href="#" class="dropdown-item">Web Development</a>
                    </div>
                </div>
                 --> 
                 <a href="ViewProjects" class="nav-item nav-link">ProjectIdeas</a>
                 <a href="ViewCompetition" class="nav-item nav-link">Competitions</a>
                <a href="winners.jsp" class="nav-item nav-link">winners</a>
                <a href="#" class="nav-item nav-link">team</a>
            <form class="form-inline">
                <div class="input-group">                    
                    <input type="text" class="form-control" placeholder="Search">
                    <div class="input-group-append">
                        <button type="button" class="btn btn-secondary"><i class="fa fa-search"></i></button>
                    </div>
                </div>
            </form>
            <div class="navbar-nav">
                <a href="logout.jsp" class="nav-item nav-link">Logout</a>
            </div>
        </div>
    </nav>
</div>
</body>
</html>                      