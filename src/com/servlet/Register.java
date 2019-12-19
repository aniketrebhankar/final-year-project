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
import com.servlet.*;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		String Username=request.getParameter("Username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String Confirmpassword=request.getParameter("Confirmpassword");
		String Mobile=request.getParameter("Mobile");
		HttpSession session=request.getSession();
		response.getContentType();
		session.setAttribute("Username", Username);
		System.out.println("Confirmpassword"+Confirmpassword);
		Bean rb=new Bean();
		
		
		rb.setUsername(Username);
		rb.setEmail(email);
		rb.setPassword(password);
		rb.setConfirmpassword(Confirmpassword);
		rb.setMobile(Mobile);
		
		Inter asd= new Imple();
		int i=asd.register(rb);
		if(i==1){
			response.sendRedirect("Login.jsp");
		}                          
		else{
			response.sendRedirect("Error.jsp");
		}
		
	}

}
