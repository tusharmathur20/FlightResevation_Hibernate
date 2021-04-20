<!DOCTYPE html>
<%@page import="com.Servelets.LoginServlet"%>
<html lang="en">
<head>
  <title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
       
        body, html {
            height: 100%;
            line-height: 1.8;
        }
        .bgimg-1 {
            background-position: center;
            background-size: cover;
            background-image: url("IMG/sky1.jpg");
            min-height: 100%;
        }
       
     
    </style>
  </head>
  <body>
         <header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">

   <%@include file="All_js_css.jsp" %>
  </head>
  <body>
    <div class="container-fluid  p-0 m-0 ">
    <%@include file="navbar.jsp" %>
    <br>
    </div>
    
<div class="container">
  <h2>Admin Login</h2>
  <form action="LoginServlet">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
       <br><small id="emailHelp" class="form-text text-muted">&nbsp;&nbsp;Email : admin@flyaway.com</small>
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd" required>
      <br><small id="passwordHelp" class="form-text text-muted">&nbsp;&nbsp; Current Password :&nbsp;<%= LoginServlet.password %></small>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>
