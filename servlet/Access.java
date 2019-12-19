package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.AccessBean1;
import com.imple.Imple;
import com.inter.Inter;



/**
 * Servlet implementation class Access
 */
@WebServlet("/Access")
public class Access extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Access() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String Filename=request.getParameter("filename");
		System.out.println("Filename ="+Filename);
		
		
		
		
		String filekey=request.getParameter("filekey");
		System.out.println("filekey= ................"+filekey);
			
		
		
		
		String Ownername=request.getParameter("Ownername");
		
		System.out.println("Ownername= ................"+Ownername);
		
		
		
		AccessBean1 ac=new AccessBean1();
		
		ac.setFilename(Filename);
	ac.setFilekey(filekey);
		ac.setEmail(Ownername);
		
		Inter jj=new Imple();
		
		int d=jj.getaccess(ac);
		
		if(d>=1)
		{
			response.sendRedirect("Accept1.jsp");
		}
		
		else
		{
			response.sendRedirect("Error.jsp");
		}
		
		
	
			
		
		// TODO Auto-generated method stub
	
	}

}