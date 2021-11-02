package com.pojo;

import java.sql.Date;

public class ClassGrade {
	private int id;
	private String cname;
	private int stunum;
	private int mid;
	private int thid1;
	private int thid2;
	private Date starttime;
	public ClassGrade() {

	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public int getStunum() {
		return stunum;
	}

	public void setStunum(int stunum) {
		this.stunum = stunum;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public int getThid1() {
		return thid1;
	}

	public void setThid1(int thid1) {
		this.thid1 = thid1;
	}

	public int getThid2() {
		return thid2;
	}

	public void setThid2(int thid2) {
		this.thid2 = thid2;
	}

	public Date getStarttime() {
		return starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	public ClassGrade(int id, String cname, int stunum, int mid, int thid1,
			int thid2, Date starttime) {
		this.id = id;
		this.cname = cname;
		this.stunum = stunum;
		this.mid = mid;
		this.thid1 = thid1;
		this.thid2 = thid2;
		this.starttime = starttime;
	}

}
