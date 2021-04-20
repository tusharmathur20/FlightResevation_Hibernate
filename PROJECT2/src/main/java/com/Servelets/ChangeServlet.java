package com.Servelets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChangeServlet
 */
public class ChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = resp.getWriter();
        String pass = req.getParameter("passwordEntered");
        if (!LoginServlet.isLoggedIn){
            out.println("You must login first");
        }
        else if (pass.equals("")){
            out.println("Password can't be empty");
        }
        else if (LoginServlet.isLoggedIn && !pass.equals("")){
            LoginServlet.password = pass;
            out.println("<p>Password changed. New Password is " +LoginServlet.password);
            out.println("<br> <a href=\"login.jsp\"  class=\"btn btn-primary\">Go back</a>");
        }
        else {
            out.println("Sorry, Something went wrong");
        }
        out.close();
    }
	}


