<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project plus</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css"href="css/header.css">

</head>
<body>
<jsp:include page="header.jsp" />
<div class="container">
<div class="card-deck">
<div class="card" style="width:300px" >
  <img class="card-img-top" src="img/android7.png" alt="Card image">
  <div class="card-body">
    <h4 class="card-title">Android competitions</h4>
    <p class="card-text">Learn about ongoing Android competitions or join the teams you wish .</p>
    <a href="androidcompe.jsp" class="btn btn-primary" name="android">View</a>
  </div>
</div>

<div class="card" style="width:300px">
  <img class="card-img-top" src="img/web5.jpg" alt="Card image">
  <div class="card-body">
    <h4 class="card-title">Web development competitions</h4>
    <p class="card-text">Learn about ongoing Web development competitions or join the teams you wish ..</p>
    <a href="webcompe.jsp" class="btn btn-primary">View</a>
  </div>
</div>

<div class="card" style="width:300px">
  <img class="card-img-top" src="img/ai7.png" alt="Card image">
  <div class="card-body">
    <h4 class="card-title">Data Science And AI competitions</h4>
    <p class="card-text">Learn about ongoing data science and AI competitions or join the teams you wish .</p>
    <a href="datasciencecompe.jsp" class="btn btn-primary">View</a>
  </div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  
</body>
</html>