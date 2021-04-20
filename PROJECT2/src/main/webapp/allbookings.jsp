<%@page import="com.Servelets.LoginServlet"%>
<%@page import="com.entities.Reservation"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>

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
  
    <div class="container-fluid  p-0 m-0 ">
    <%@include file="navbar.jsp" %>
    <br>
    </div>
    


<%
    if (LoginServlet.isLoggedIn) {
%>
<table class="table">
<thead>

    <tr>
      <th scope="col">Id</th>
      <th scope="col">Company</th>
      <th scope="col">Source</th>
      <th scope="col">Destination</th>
       <th scope="col">Date</th>
       <th scope="col">Day</th>
       <th scope="col">Price</th>
    </tr>
    </thead>
<tbody>
<%

Session ss=FactoryProvider.getFactory().openSession();
Query qq=ss.createQuery("from Reservation");
List <Reservation>list=qq.list();
for (Reservation res:list){
	%>



   
    <tr>
  
      <td><%=res.getId()%></td>
      <td><%=res.getCompany()%></td>
      <td><%=res.getSource()%></td>
       <td><%=res.getDestination()%></td>
        <td><%=res.getDate()%></td>
         <td><%=res.getDay()%></td>
         <td><%=res.getPrice()%></td>
   
   <%
                     
}  }
                    else {
                        out.print("You must Login first");
                       }
    
                %>
    </tr> 
  </tbody>
</table>

     
  </div>
  
    <div class="Container text-center mt-2">
    <a href="ChangePass.jsp"  class="btn btn-primary">Change Password</a>
            <a href="login.jsp" class="btn btn-danger">Logout</a>
        </div>
</body>
</html>