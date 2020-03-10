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
  <img class="card-img-top" src="img/android4.jpg" alt="Card image">
  <div class="card-body">
    <h4 class="card-title">Android projects</h4>
    <p class="card-text">A List of Android project to practice on.</p>
    <a href="projects.jsp" class="btn btn-primary" name="android">View</a>
  </div>
</div>

<div class="card" style="width:300px">
  <img class="card-img-top" src="img/web2.jpg" alt="Card image">
  <div class="card-body">
    <h4 class="card-title">Web development projects</h4>
    <p class="card-text">A List of web development project to practice on.</p>
    <a href="webproj.jsp" class="btn btn-primary">View</a>
  </div>
</div>

<div class="card" style="width:300px">
  <img class="card-img-top" src="img/data.png" alt="Card image">
  <div class="card-body">
    <h4 class="card-title">Data Science And AI projects</h4>
    <p class="card-text">A List of Data Science And AI project to practice on.</p>
    <a href="datascienceproj.jsp" class="btn btn-primary">View</a>
  </div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  
</body>
</html>