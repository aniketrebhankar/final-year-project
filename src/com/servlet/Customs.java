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
 * Servlet implementation class Customs
 */
@WebServlet("/Customs")
public class Customs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Customs() {
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
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		System.out.println(email + "  " + password);

		Bean lb = new Bean();

		
		lb.setEmail(email);
		lb.setPassword(password);
		

		HttpSession session = request.getSession();
		session.setAttribute("email", email);

		Inter asd = new Imple();
		boolean j = asd.login(lb);
		System.out.println(j);

		if (email.equals("admin@gmail.com") && password.equals("admin"))
		{
			response.sendRedirect("NewFile.jsp");
		}
		else
		{
			response.sendRedirect("Error.jsp");
		}
		
		
		
	}

}
	
