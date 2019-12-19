package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.bean.FilesBean;
import com.imple.Imple;

import com.inter.Inter;


/**
 * Servlet implementation class Share
 */
@WebServlet("/Share")
public class Share extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Share() {
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
System.out.println("amazon share comming");
		
		String email=request.getParameter("email");
		String Message=request.getParameter("msg");
		String Filename=request.getParameter("filename");
		
		System.out.println("==="+email+"=="+Filename+"===="+Message);
		
		
		HttpSession session2=request.getSession();
		String Sender=session2.getAttribute("Sender").toString();
		
		System.out.println("sender====="+Sender);
		
		
		FilesBean bean= new FilesBean();
		bean.setOwnername(email);
		bean.setFilename(Filename);
		bean.setMsg(Message);
		bean.setSenderName(Sender);
		
	Inter inf=new Imple();
		int res=inf.getshareFile(bean);
		
		System.out.println(res+"...........");
		if(res==1)
		{
			
			response.sendRedirect("send.jsp");
			
		}
		
		
		
	}

}
	


