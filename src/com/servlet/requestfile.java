package com.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.bean.Request;
import com.dbcon.Dbcon;
import com.imple.Imple;
import com.inter.Inter;


/**
 * Servlet implementation class requestfile
 */
@WebServlet("/requestfile")
public class requestfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public requestfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int c;
		try {
			Connection con=Dbcon.Connect();
		
		System.out.println("requestfile.java");
		HttpSession sd=request.getSession();
		String Ownername=sd.getAttribute("email").toString();
		
		String Filename=request.getParameter("filename");
		
		
		String filekey="*********";

		
		
		
		
		String Filerequest="Not Update";
		
		
		
		
		sd.setAttribute("Filerequest", Filerequest);
		
//		String request2=sd.getAttribute("FFilerequest").toString();
		
		
	Request rr=new Request();
		
		rr.setEmail(Ownername);
		
		rr.setFilename(Filename);
		
		rr.setFilekey(filekey);
		rr.setFilerequest(Filerequest);
		
		
		
		Inter in=new Imple();
		
		 c=in.getrequest(rr);
		
		
		if(c==1)
		{
			response.sendRedirect("requestsucess.jsp");
			
		}
		else
		{
			
			
			response.sendRedirect("Error.jsp");
		}
		}
catch (Exception e) {
			
			e.printStackTrace();
		}
		
		// TODO Auto-generated method stub
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
		
		
	} 

}
