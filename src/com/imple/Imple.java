package com.imple;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.util.Date;


import com.bean.*;

import com.dbcon.Dbcon;



import com.inter.Inter;
import java.text.SimpleDateFormat;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;


public class Imple implements Inter {

	
	
	
	
	
	@Override
	public int register(Bean rb) {
		int result=0;      
		try {
			Connection con=Dbcon.Connect();
			PreparedStatement ps=con.prepareStatement("INSERT INTO cloud09.register VALUES(?,?,?,?,?)");
			
			ps.setString(1, rb.getUsername());
			ps.setString(2, rb.getEmail());
			ps.setString(3, rb.getPassword());
			ps.setString(4, rb.getConfirmpassword());
			ps.setString(5, rb.getMobile());
			
		result=ps.executeUpdate();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean login(Bean lb) {
		boolean log=false;
		try {
			
		
		
		Connection con=Dbcon.Connect();
		PreparedStatement ps=con.prepareStatement("SELECT * FROM cloud09.register  where Email=? and password=?");
		
		ps.setString(1, lb.getEmail());
		ps.setString(2, lb.getPassword());
		
		ResultSet res=ps.executeQuery();
		log=res.next();
		
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return log;
		
	
	}

	

	

public int fileupload(fileupload fb) {
	DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	   
	   Date date = new Date();
	   System.out.println(dateFormat.format(date));
	   
	  
	   
	int insert = 0;
	try
	{
		

	Connection con = Dbcon.Connect() ;
	PreparedStatement ps=con.prepareStatement("INSERT INTO cloud09.fileupload VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");

	
	
	
	
	ps.setString(1,fb.getProductid());
	ps.setString(2, fb.getProductname());
	ps.setString(3, fb.getCost());
	ps.setString(4, fb.getNetweight());
	
	ps.setString(5, dateFormat.format(date));
	ps.setString(6, fb.getMaxpieces());
	ps.setString(7, fb.getCustomsname());
	ps.setString(8, fb.getCompany());
	ps.setString(9, fb.getCountry());
	ps.setString(10, fb.getFilekey());
	
	ps.setString(11, fb.getFilename());
	
	ps.setLong(12, fb.getFilesize());
	
	ps.setString(13, fb.getFiletype());
	
	ps.setString(14, fb.getFilecontent());
	
	ps.setString(15, fb.getOwnername());

	
	
	insert=ps.executeUpdate();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return insert;
}

public int getrequest(Request dd) 
{
System.out.println("get request");
int i=0;
	
	try
	{
		Connection con = Dbcon.Connect() ;
        PreparedStatement ps = con.prepareStatement("INSERT INTO cloud09.request_file VALUES(?,?,?,?)");
        
		ps.setString(1,dd.getFilename());
		ps.setString(2,"********");
		ps.setString(3,dd.getEmail());
		
		ps.setString(4,"Not Update");
		
		i=ps.executeUpdate();	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return i;
	}

@Override
public int getaccess(AccessBean1 as) {
// TODO Auto-generated method stub

int i=0;
try

{
	Connection con = Dbcon.Connect() ;
	System.out.println("fdfsdf");
 PreparedStatement ps = con.prepareStatement("UPDATE cloud09.request_file r SET Filerequest1='Update' where  filename1='"+as.getFilename()+"' and Ownername='"+as.getEmail()+"'");
	
	System.out.println("The Result is"+ps);
	
	i=ps.executeUpdate();
	
	System.out.println("The i="+i);
}
catch(Exception e)
{
	e.printStackTrace();
}

return i;

}

@Override
public String getfilekey(String Filename) {
// TODO Auto-generated method stub

int i=0;
String PrivateKey = null;
	
	try
	{
		Connection con = Dbcon.Connect() ;
		PreparedStatement ps = con.prepareStatement("SELECT filekey FROM `cloud09`.`fileupload` where  Filename='"+Filename+"'");
		
	    ResultSet rs =ps.executeQuery();
	    
	    while(rs.next())
	    {
	    	PrivateKey =rs.getString(1);
	    		
	    	System.out.println("PrivateKey="+PrivateKey);
	    }
		
		System.out.println("The i="+i);
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return PrivateKey;
}




public int getshareFile(FilesBean bean) {
	
	int res=0;
	try {
		Connection con=Dbcon.Connect();
		PreparedStatement ps=con.prepareStatement("INSERT INTO cloud09.inbox VALUES(?,?,?,?,?)");
		ps.setString(1, bean.getOwnername());
		ps.setString(2, bean.getMsg());
		ps.setString(3, bean.getFilename());
		ps.setString(4, bean.getSenderName());
		ps.setString(5, "Request");
		
		System.out.println("ps-------"+ps);
		
		res=ps.executeUpdate();
		
		
		System.out.println("res======"+res);
	} catch (Exception e) {
		// TODO: handle exception
	}
	return res;
}


public int cusreg(Cusbean rb){
	int result=0;      
	try {
		Connection con=Dbcon.Connect();
		PreparedStatement ps=con.prepareStatement("INSERT INTO cloud09.cusreg VALUES(?,?,?,?,?)");
		
		ps.setString(1, rb.getUsername());
		ps.setString(2, rb.getEmail());
		ps.setString(3, rb.getPassword());
		ps.setString(4, rb.getConfirmpassword());
		ps.setString(5, rb.getMobile());
		
	result=ps.executeUpdate();
		
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	return result;
}

@Override
public boolean cuslog(Cusbean lb) {
	boolean log=false;
	try {
		
	
	
	Connection con=Dbcon.Connect();
	PreparedStatement ps=con.prepareStatement("SELECT * FROM `cloud09`.`cusreg`where email=? and password=?");
	
	ps.setString(1, lb.getEmail());
	ps.setString(2, lb.getPassword());
	
	ResultSet res=ps.executeQuery();
	log=res.next();
	
	
	} catch (Exception e) {
		e.printStackTrace();
	}
	return log;
	

}
}

