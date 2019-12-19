package com.bean;

public class FilesBean {
	private String filename,path,ownername,Filetype,tagvalue,filebytes, msg,filekey,SenderName,ReceiverName;
	
	
	public String getReceiverName() {
		return ReceiverName;
	}

	public void setReceiverName(String receiverName) {
		ReceiverName = receiverName;
	}

	

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	

	public String getSenderName() {
		return SenderName;
	}

	public void setSenderName(String senderName) {
		SenderName = senderName;
	}

	public String getFilebytes() {
		return filebytes;
	}

	public void setFilebytes(String filebytes) {
		this.filebytes = filebytes;
	}

	

	public String getTagvalue() {
		return tagvalue;
	}

	public void setTagvalue(String tagvalue) {
		this.tagvalue = tagvalue;
	}

	public double getFilesize() {
		return filesize;
	}

	private double filesize;
	public String getOwnername() {
		return ownername;
	}

	public String getFiletype() {
		return Filetype;
	}

	

	public void setFilesize(double filesize) {
		this.filesize = filesize;
	}

	
	public void setFiletype(String filetype) {
		Filetype = filetype;
	}

	public void setOwnername(String ownername) {
		this.ownername = ownername;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

}
