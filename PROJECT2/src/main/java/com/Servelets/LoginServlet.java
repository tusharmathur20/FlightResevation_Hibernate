package com.Servelets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public static String password = "admin";
    public static String email = "admin@flyaway.com";
	public static boolean isLoggedIn = false;
    public LoginServlet() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=request.getParameter("email");
		String password=request.getParameter("pswd");
		
		RequestDispatcher rd=null;
		if(username.equalsIgnoreCase(LoginServlet.email) && password.equalsIgnoreCase(LoginServlet.password)) {
			isLoggedIn=true;
			rd=request.getRequestDispatcher("allbookings.jsp");
			rd.forward(request, response);
		}
		else {
			rd=request.getRequestDispatcher("login.jsp");
			PrintWriter out=response.getWriter();
			rd.include(request, response);
			out.println(("<center> <span style='color:red'>Invalid Credentials!!</ span>"));
		}
	}
	}


