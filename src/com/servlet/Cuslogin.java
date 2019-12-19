package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.bean.Cusbean;
import com.imple.Imple;
import com.inter.Inter;

/**
 * Servlet implementation class Cuslogin
 */
@WebServlet("/Cuslogin")
public class Cuslogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cuslogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		response.getContentType();
		
		
		
		
		String email=request.getParameter("email");	
		
		session.setAttribute("email", email);
		
		String password=request.getParameter("password");

		
		Cusbean lb=new Cusbean();
		lb.setEmail(email);
		lb.setPassword(password);
		
		
		
		Inter asd=new Imple();
	
	boolean result=asd.cuslog(lb);
	
	System.out.println(result);
	
	if(result==true)
	{
		response.sendRedirect("Welcome1.jsp?email="+email);
	}
		
	else
	{
		response.sendRedirect("Error.jsp");
	}

	}


	}


