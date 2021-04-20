<%@page import="com.Servelets.LoginServlet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<h1>Enter new Password:</h1>
            <%
            if (LoginServlet.isLoggedIn) {
            %>
                <form action="ChangeServlet" method="post">
                    <div>
                        <label class="sr-only">Email address : admin@flyaway.com</label>
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="inputPassword" class="sr-only">New Password</label>
                        <input type="password" name="passwordEntered" class="form-control" id="inputPassword" placeholder="Enter a new password">
                        <br><small id="passwordHelp" class="form-text text-muted">&nbsp;&nbsp; Current Password :&nbsp;<%= LoginServlet.password %></small>
                    </div>
                    <div class="Container text-center mt-2">
                    <button type="submit" class="btn btn-info mb-2">Change Password</button>
                    </div>
                </form>
            <%
            }
            else {
                out.print("You must Login first");
            }
            %>
    </div>
</body>
</html>