<%@page import="java.io.PrintWriter"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.entities.Reservation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
  
<!doctype html>


<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

   
    <title>FlyAway:Homepage</title>

 <style>
       
        body, html {
            height: 100%;
            line-height: 1.8;
        }
        .bgimg-1 {
            background-position: center;
            background-size: cover;
            background-image: url("IMG/img4.jpg");
            min-height: 100%;
        }
       
     
    </style>
  </head>
  <body>
         <header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">

 <%
	
%>
  
      <%@include file="All_js_css.jsp" %>
  </head>
  <body>
    <div class="container">
    <%@include file="navbar.jsp" %>
    <br>
    </div>

    
    <h1 style="text-align:center">Welcome to FlyAway </h1>
    <div class=booking-form-box>
     <form action="AfterSearch.jsp" method="get">
      <div class="form-group" style="text-align:center">
                    <label  for="source" >Select Source</label>
  					 <select  class="form-control" id="source" name="source" value="source">
                        <option value="Pune">Pune</option>
                        <option value="Delhi">Delhi</option>
                        <option value="Nepal">Nepal</option>
                    </select>
                    </div>
                    
                    <div class="form-group" style="text-align:center">
                    <label for="destination">Select Destination</label>
                    <select  class="form-control" id="destination" name="destination" value="destination">
                        <option value="USA">USA</option>
                        <option value="Mumbai">Mumbai</option>
                        <option value="Kolkata">Kolkata</option>
                    </select>
                </div>
  

		<br>


	<div class="input-grp">
	<label>Date of Departure</label>
	<input type="date" class="form-control select-date" name="date" id="date" value="date" required>
	</div>
	<br>



 				 <div>
                <label for="persons">No of Persons</label>
                <select class="form-control" id="persons" name="persons"  value="persons">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
            </div>
            <br>

<div class="container text-center">
 <input type="submit" class="btn btn-outline-primary-dark my-2 my-sm-0 text-center" name="Search" value="Search">
 </form>
</div>

 </div>
  </body>
</html> 