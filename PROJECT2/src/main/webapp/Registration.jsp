<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
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
    
    <div class="container">
 <div class="row">
                <div class="col">
                    <h1 align="center" ><b>Booking Details</b></h1>
                    <p align="center"><span><strong>Enter Passenger Details</strong></span></p><br>
                </div>
            </div>

                <form action="FinalServlet1" method="post" class="form-container">
                    <div class="form-group">
                        <label for="pname">Passenger Name</label>
                        <input type="text" class="form-control" id="pname" name="pname" placeholder="Enter name of the/any passenger(s)"required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email"required>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone</label>
                        <input type="number" class="form-control" id="phone" name="phone" placeholder="Enter phone number"required>
                    </div>
                    <br>
                    <button type="submit" class="btn btn-success btn-block" value="Submit">Submit</button>
                </form>
            </div>
            </div>
</body>
</html>