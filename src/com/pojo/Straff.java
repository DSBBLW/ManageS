package com.pojo;

public class Straff {
	private int straffid;//员工Id
	private String straffname;//员工姓名
	private int straffnum;//员工处理数量
	private int maxnum;//最大业务量
	public Straff() {
		// TODO Auto-generated constructor stub
	}
	
	public Straff(int straffid,String straffname,int straffnum,int maxnum){
		this.straffid=straffid;
		this.straffname=straffname;
		this.straffnum = straffnum;
		this.maxnum = maxnum;
	}

	public int getStraffid() {
		return straffid;
	}

	public void setStraffid(int straffid) {
		this.straffid = straffid;
	}

	public String getStraffname() {
		return straffname;
	}

	public void setStraffname(String straffname) {
		this.straffname = straffname;
	}

	public int getStraffnum() {
		return straffnum;
	}

	public void setStraffnum(int straffnum) {
		this.straffnum = straffnum;
	}

	public int getMaxnum() {
		return maxnum;
	}

	public void setMaxnum(int maxnum) {
		this.maxnum = maxnum;
	}
	
}
