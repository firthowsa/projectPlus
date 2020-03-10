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

<div class="container">
  <div class="row">
     <div class="col-3 order-2" id="sticky-sidebar">
            <div class="sticky-top">
                <ul>
                   <li> <a href="#" >Description</a></li>
                   <li><a href="rule.jsp" >Rules</a></li>
                   <li><a href="timeline.jsp" >Timeline</a></li>
                   <li> <a href="prize.jsp" tabindex="-1">Prize</a></li>
                </ul>
            </div>
       </div>
   </div>
</div>
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