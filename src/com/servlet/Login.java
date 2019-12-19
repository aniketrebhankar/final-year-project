package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Bean;
import com.imple.Imple;
import com.inter.Inter;




/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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

		
		Bean lb= new Bean();
		lb.setEmail(email);
		lb.setPassword(password);
		
		
		
		Inter asd=new Imple();
	
	boolean result=asd.login(lb);
	
	System.out.println(result);
	
	if(result==true)
	{
		response.sendRedirect("Welcome.jsp?="+email);
	}
		
	else
	{
		response.sendRedirect("Error.jsp");
	}

	}

}
