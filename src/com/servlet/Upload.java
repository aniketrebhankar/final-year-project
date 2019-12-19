package com.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sun.nio.ch.FileKey;

import com.bean.fileupload;
import com.imple.Imple;
import com.inter.Inter;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

/**
 * Servlet implementation class Upser
 */
@WebServlet("/Upload")
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int j = 0;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Upload() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		MultipartParser mp = new MultipartParser(request, 999999999);
		String productid = null;
		String productname = null;
		String cost = null;
		String netweight = null;
		String expirydate = null;
		String maxpieces = null;
		String customsname = null;
		String company = null;
		String country = null;
		String filecontent = null;
		String FileKey = null;
		long size = 0;
		String filename=null;
		String ownername=null;

		String filetype = null;
		
		 HttpSession session2=request.getSession();
		 String email=session2.getAttribute("email").toString();
		 System.out.println("email ssssssssssssssssssssssssssss="+email);
		
        PrintWriter out=response.getWriter();
        
		
		
		
		ArrayList list = new ArrayList<>();

		Part part;
		FilePart filepart;

		String path = getServletContext().getRealPath(" ");
		System.out.println(path);

		String editPath = path.substring(0, path.indexOf("."));
		System.out.println(editPath);

		String fullpath = editPath + "ITJCC08\\WebContent\\local\\";
		System.out.println(fullpath);

		while ((part = mp.readNextPart()) != null) {

			if (part.isFile()) {
				filepart = (FilePart) part;

				filetype = filepart.getContentType();

				 filename = filepart.getFileName();
				System.out.println(filename);

				fullpath = fullpath + filename;
				System.out.println(fullpath);

				File file = new File(fullpath);
				size = filepart.writeTo(file);

				BufferedReader br = new BufferedReader(new FileReader(file));

			}

			else if (part.isParam()) {
				ParamPart param = (ParamPart) part;
				String name = param.getName();
				String value = param.getStringValue();

				System.out.println("kkkkkkkkkkedifffffffff " + value);
				list.add(value);

			}

		}

		fileupload fb = new fileupload();

		fb.setProductid(list.get(0).toString());

		System.out.println("productidhhhhhhhhhhhhhhhhhhhhhhhhhhhhh="
				+ list.get(0).toString());

		System.out.println(Collections.max(list));

		fb.setProductname(list.get(1).toString());

		System.out.println("productnameaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="
				+ list.get(1).toString());

		fb.setCost(list.get(2).toString());
		System.out.println("productnameaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="
				+ list.get(2).toString());

		fb.setNetweight(list.get(3).toString());
		System.out.println("costttttttttttttt=" + list.get(3).toString());

		fb.setExpirydate(list.get(4).toString());
		System.out.println("expirydateggggggggggggg=" + list.get(4).toString());

		fb.setMaxpieces(list.get(5).toString());
		System.out.println("Maxpiecesggggggggggggggggggg="
				+ list.get(5).toString());

		fb.setCustomsname(list.get(6).toString());
		System.out.println("productnameaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="
				+ list.get(6).toString());

		fb.setCompany(list.get(7).toString());
		System.out.println("productnameaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="
				+ list.get(7).toString());

		fb.setCountry(list.get(8).toString());
		System.out.println("productnameaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="
				+ list.get(8).toString());

		fb.setFilekey(list.get(9).toString());
		System.out.println("productnameaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="
				+ list.get(9).toString());

		fb.setFilename(filename);
		System.out.println("filenameaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="
				+ filename);
		fb.setFilesize(size);
		System.out.println("sizeeaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="
				+ size);

		fb.setFiletype(filetype);
		System.out.println("filetypeaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="
				+ filetype);

		fb.setFilecontent(fullpath);
		System.out.println("fullpathaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="
				+ fullpath);

		fb.setFilecontent(fullpath);
		System.out.println("fullpathaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="
				+ fullpath);
		
		fb.setOwnername(email);
		System.out.println("emailhaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="
				+ email);
		
		int res = 0;
		
		System.out.println("manikandan====="+res);

		Inter asd = new Imple();
		res = asd.fileupload(fb);
		if (res == 1) {
			// RequestDispatcher
			// req=request.getRequestDispatcher("UploadSucess.jsp");
			// req.forward(request, response);
			// return;
			response.sendRedirect("UploadSucess.jsp");
		}

		else {
			response.sendRedirect("Deduplicate.jsp");
		}

	}
}