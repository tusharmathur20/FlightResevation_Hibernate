<%@page import="java.util.ArrayList"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Reservation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Portal</title>
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
    <div class="container">
    <%@include file="navbar.jsp" %>
    <br>
    </div>


	
	 
<div class="container">
               <form action="FinalServlet2" method="post" class="form-container">
                
                <p align="center"><span><strong>Enter Card Details:</strong></span></p><br>
                   <div class="form-group">
                       <label for="card_details">Name on Card</label>
                       <input type="text" class="form-control" id="nameoncard" name="nameoncard" placeholder="Enter Name on Card" required>
                   </div>
                   <div class="form-group">
                       <label for="card_details">Card Number</label>
                       <input type="number" class="form-control" id="carddetails" name="carddetails" placeholder="Enter Card Number" required>
                     
                   </div>
                   <br>
                 
             
                   <button type="submit" class="btn btn-success btn-block" value="Submit">Confirm Payment</button>
                  
 
</body>
</html>