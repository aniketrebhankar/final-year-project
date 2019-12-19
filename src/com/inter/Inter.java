package com.inter;


import com.bean.AccessBean1;
import com.bean.Bean;
import com.bean.Cusbean;
import com.bean.FilesBean;
import com.bean.Request;
import com.bean.fileupload;


public interface Inter {
	public int register(Bean rb);
	public boolean login(Bean lb);
	public int fileupload(fileupload fb);
	public int getrequest(Request dd);

	public int getaccess(AccessBean1 as);

	public String getfilekey(String Filename);
	public int getshareFile(FilesBean bean);
	
	
	public int cusreg(Cusbean rb);
	public boolean cuslog(Cusbean lb);

}
