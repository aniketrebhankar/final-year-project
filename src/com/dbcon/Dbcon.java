package com.dbcon;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbcon {

	static Connection con=null;

	public  static Connection Connect()  throws Exception
	{
		System.out.println("data base connection;;;;;;;;;");
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud09","root","root");
		System.out.println("Datatbase Connected");
		return con;
		
	}

	

}
