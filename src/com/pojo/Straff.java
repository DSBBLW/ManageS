package com.pojo;

public class Straff {
	private int straffid;//Ա��Id
	private String straffname;//Ա������
	private int straffnum;//Ա����������
	private int maxnum;//���ҵ����
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
