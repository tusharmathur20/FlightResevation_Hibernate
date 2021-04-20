package com.Servelets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entities.DetailsList;



public class FinalServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public FinalServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	try {
		DetailsList u=new DetailsList ();
		HttpSession session=request.getSession();
		
		u.setPname(request.getParameter("pname"));
		u.setEmail(request.getParameter("email"));
		u.setPhone(Long.parseLong(request.getParameter("phone")));
		session.setAttribute("DetailsList", u);
		response.sendRedirect("Payment.jsp");
		}catch(NumberFormatException e) {
			e.printStackTrace();
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
