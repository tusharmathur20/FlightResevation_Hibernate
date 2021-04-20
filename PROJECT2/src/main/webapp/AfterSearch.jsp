<%@page import="java.io.PrintWriter"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.entities.Reservation"%>
<%@page import="java.util.*"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Search Result</title>
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
	 <%
    try{
   	String hql ="from Reservation R where R.Source="+"'"+request.getParameter("source")+"'"+" AND R.Destination="+"'"+request.getParameter("destination")+"'";
   	
    String source1= request.getParameter("source");
	Session ss=FactoryProvider.getFactory().openSession();
	
	Transaction tx=ss.beginTransaction();
	ArrayList<Reservation> Quer= (ArrayList<Reservation>) ss.createQuery(hql).list();
	tx.commit();
	ss.close();
	ArrayList<String> Sourcecity = new ArrayList();
	for (int i=0;i<Quer.size();i++){
		Sourcecity.add(Quer.get(i).getSource());		
	}
	%>
	
	
	<div class="container-fluid">
  <h2 style="text-align:center;">Welcome to FlyAway Airlines</h2>
  <br>
  <p style="text-align:center;">
  Available flights : </p>   
  <p style="text-align:center;">Number of persons : <%= request.getParameter("persons")%></p>
           
  <table class="table">
    <thead>
      <tr>
        <th>Id</th>
        <th>Company</th>
        <th>Source</th>
        <th>Destination</th>
        <th>Date</th>
        <th>Price</th>
        <th> </th>
        
      </tr>
    </thead>
   
    <tbody>
      <tr>
        <td><%=Quer.get(0).getId() %></td>
        <td><%=Quer.get(0).getCompany() %></td>
        <td><%=Quer.get(0).getSource() %></td>
        <td><%=Quer.get(0).getDestination() %></td>
        <td><%=request.getParameter("date")%></td>
    <td><%=Quer.get(0).getPrice() %> x <%=request.getParameter("persons")%>=rs. <%= Quer.get(0).getPrice() * Integer.parseInt(request.getParameter("persons")) %></td>
         <td> <a href="Registration.jsp" class="btn btn-primary">Book now</a></td>
      </tr>
    
  
    </tbody>
    
  </table>
</div>
	<% 
    }
    catch(Exception e){
    	e.printStackTrace();
    	out.print("Error "+e.getMessage());
    }
	 
    
    %>

</body>
</html>