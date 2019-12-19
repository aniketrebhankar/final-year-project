package com.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JDialog;
import javax.swing.JOptionPane;

import com.imple.Imple;
import com.inter.Inter;





/**
 * Servlet implementation class Download
 */
@WebServlet("/View")
public class View extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public View() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String Filekey=request.getParameter("key");
//		System.out.println("Filekey===="+Filekey);
//		    
//		String Filename=null;
//		String Ownername=null;
//		    
//		     String Time=null;
//		    
//		    Connection con = null;
//			try {
//				con = Regdb.Connect();
//			
//		    PreparedStatement ps=con.prepareStatement("SELECT * FROM `deduplication`.`fileupload` where filekey='"+Filekey+"'");
//		    ResultSet rs=ps.executeQuery();
//		    
//		    
//
//		    while(rs.next())
//		    {
//		     
//		    	Filename=rs.getString(1);
//		    	
//		    	System.out.println("Filenameeeeeeeeee"+Filename);
//		    }
//		
//		
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		    
//			
//			
//			
//			PrintWriter out = response.getWriter();  
//			//String filename = request.getParameter("filename"); 
//			
//			String getrealPath=getServletContext().getRealPath("/");
//			
//
//		String path = getrealPath.substring(0, getrealPath.indexOf('.'));
//		
//		
//			String filepath=path+"Deduplication\\WebContent\\Local\\"+Filename;	
//			
//		System.out.println("path"+path);
//			System.out.println("Filename===="+Filename);
////		String filepath1 = "E:\\Rajesh workspace\\Deduplication\\WebContent\\Local\\"+Filename;   
//			response.setContentType("APPLICATION/OCTET-STREAM");   
//			response.setHeader("Content-Disposition","attachment; filename=\"" + Filename + "\"");   
//			  
//			FileInputStream fileInputStream = new FileInputStream(filepath);  
//			            
//			int i;   
//			while ((i=fileInputStream.read()) != -1) {  
//			out.write(i);   
//			}   
//			fileInputStream.close();   
//			out.close();   
//		}
//		}
System.out.println("Welcome view page");
		
		
		
		String filename=request.getParameter("filename");
		
		System.out.println("filename---"+filename);
		
		String filekey=request.getParameter("filekey");
		
		System.out.println("filekey-----:"+filekey);
		
		Inter i1=new Imple();
		
		
		
		JOptionPane jpane=new JOptionPane("Enter secret Key");
		
		JDialog jdialogue=jpane.createDialog("Alert");
		
		jdialogue.setAlwaysOnTop(true);
		
		jdialogue.show();
		
		String typingPrivatekey=JOptionPane.showInputDialog("Enter your Secret Key");
		
		if(filekey.equalsIgnoreCase(typingPrivatekey)) {
			
			System.out.println("matched");
			PrintWriter out=null;
		try 
			{
			
			String editpath=getServletContext().getRealPath("/");
			
			String path1=editpath.substring(0, editpath.indexOf("."));

			 out=response.getWriter();
			String filepath=path1+"ITJCC08\\WebContent\\local\\";
			
			String filename1=request.getParameter("filename");
			
			
			System.out.println("Filename Comming>>>>> " +filename1);
			
			
					
					  response.setContentType("APPLICATION/OCTET-STREAM");   
					  response.setHeader("Content-Disposition","attachment; filename=\"" + filename1 + "\"");   
					  
					  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath+filename1);  
					            
					  int i;   
					  while ((i=fileInputStream.read()) != -1) {  
					    out.write(i);   
					  }   
					  fileInputStream.close(); 
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		}
		else{
			System.out.println("Failed");
			
			JOptionPane.showMessageDialog(null,"Sorry Your Key is Wrong");
			
			response.sendRedirect("Error.jsp");
		}
		}
		}

