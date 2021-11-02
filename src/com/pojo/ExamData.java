package com.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ExamData {
	private int id;//主键id
	private int mid;//专业id
	private int exid;//考试类型id
	private Date dbegin;//考试开始日期
	private String dbegins;//处理日期格式
	
	/**
	 * @return the dbegins
	 */
	public String getDbegins() {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		this.dbegins=sdf.format(dbegin);
		return dbegins;
	}
	/**
	 * @param dbegins the dbegins to set
	 */
	public void setDbegins(String dbegins) {
		this.dbegins = dbegins;
	}
	private Date dend;//考试结束日期
	private String dends;//处理日期
	
	/**
	 * @return the dends
	 */
	public String getDends() {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		this.dends=sdf.format(dend);
		return dends;
	}
	/**
	 * @param dends the dends to set
	 */
	public void setDends(String dends) {
		this.dends = dends;
	}
	private int cid;//考试班级
	private String examname;//考试类型
	
	private String cname;//考试班级
	
	/**
	 * @return the examname
	 */
	public String getExamname() {
		return examname;
	}
	/**
	 * @param examname the examname to set
	 */
	public void setExamname(String examname) {
		this.examname = examname;
	}
	/**
	 * @return the cname
	 */
	public String getCname() {
		return cname;
	}
	/**
	 * @param cname the cname to set
	 */
	public void setCname(String cname) {
		this.cname = cname;
	}
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the mid
	 */
	public int getMid() {
		return mid;
	}
	/**
	 * @param mid the mid to set
	 */
	public void setMid(int mid) {
		this.mid = mid;
	}
	/**
	 * @return the exid
	 */
	public int getExid() {
		return exid;
	}
	/**
	 * @param exid the exid to set
	 */
	public void setExid(int exid) {
		this.exid = exid;
	}
	/**
	 * @return the dbegin
	 */
	public Date getDbegin() {
		return dbegin;
	}
	/**
	 * @param dbegin the dbegin to set
	 */
	public void setDbegin(Date dbegin) {
		this.dbegin = dbegin;
	}
	/**
	 * @return the dend
	 */
	public Date getDend() {
		return dend;
	}
	/**
	 * @param dend the dend to set
	 */
	public void setDend(Date dend) {
		this.dend = dend;
	}
	/**
	 * @return the cid
	 */
	public int getCid() {
		return cid;
	}
	/**
	 * @param cid the cid to set
	 */
	public void setCid(int cid) {
		this.cid = cid;
	}
	
	public ExamData(int id, int mid, int exid, Date dbegin, Date dend, int cid,
			String examname, String cname) {
		
		this.id = id;
		this.mid = mid;
		this.exid = exid;
		this.dbegin = dbegin;
		this.dend = dend;
		this.cid = cid;
		this.examname = examname;
		this.cname = cname;
	}
	public ExamData() {
		
	}
	
}
