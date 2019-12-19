package com.bean;

public class fileupload {

	private String productid,productname,cost,netweight,expirydate,maxpieces,customsname,company,country,filekey,filename,filetype,filecontent,ownername;
	public String getOwnername() {
		return ownername;
	}

	public void setOwnername(String ownername) {
		this.ownername = ownername;
	}

	long filesize;

	

	

	public long getFilesize() {
		return filesize;
	}

	public void setFilesize(long size) {
		this.filesize = size;
	}

	public String getFiletype() {
		return filetype;
	}

	public void setFiletype(String filetype) {
		this.filetype = filetype;
	}

	public String getFilecontent() {
		return filecontent;
	}

	public void setFilecontent(String filecontent) {
		this.filecontent = filecontent;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getFilekey() {
		return filekey;
	}

	public void setFilekey(String filekey) {
		this.filekey = filekey;
	}

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getCost() {
		return cost;
	}

	public void setCost(String cost) {
		this.cost = cost;
	}

	public String getNetweight() {
		return netweight;
	}

	public void setNetweight(String netweight) {
		this.netweight = netweight;
	}

	public String getExpirydate() {
		return expirydate;
	}

	public void setExpirydate(String expirydate) {
		this.expirydate = expirydate;
	}

	public String getMaxpieces() {
		return maxpieces;
	}

	public void setMaxpieces(String maxpieces) {
		this.maxpieces = maxpieces;
	}

	public String getCustomsname() {
		return customsname;
	}

	public void setCustomsname(String customsname) {
		this.customsname = customsname;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	
}
