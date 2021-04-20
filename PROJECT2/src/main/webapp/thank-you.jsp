<%@page import="com.entities.DetailsList"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.Servelets.FinalServlet1" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 
    pageEncoding="ISO-8859-1"%>
<!-- Forward processing to a servlet -->

<% DetailsList u=(DetailsList)session.getAttribute("DetailsList");	 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
<style>
       
        body, html {
            height: 100%;
            line-height: 1.8;
        }
        .bgimg-1 {
            background-position: center;
            background-size: cover;
            background-image: url("IMG/skky.jpg");
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
    <div class="jumbotron text-center">
  <h1 class="display-3">Thank You!</h1>
  <p>Booking Confirmed !!</p>
  <p class="lead"><strong>Name : <%= u.getPname() %></strong> </p>
  <p class="lead"><strong>Email : <%= u.getEmail() %></strong> </p>
   <p class="lead"><strong>Phone number : <%= u.getPhone() %></strong> </p>
   <br>
     <p class="lead"><strong>Name on Card : <%= u.getNameoncard() %></strong> </p>
       <p class="lead"><strong>Card Details: <%= u.getCarddetails() %></strong> </p>
   
  <hr>

  
  <p class="lead">
    <a class="btn btn-primary btn-sm" href="index.jsp" role="button">Continue to homepage</a>
  </p>
  <div class="footer">
     Project By Tushar Mathur
    </div>
</div>
  





</body>
</html>

</body>
</html>