package com.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Email {
	private int emailid;
	/**
	 * @return the emailid
	 */
	public int getEmailid() {
		return emailid;
	}
	/**
	 * @param emailid the emailid to set
	 */
	public void setEmailid(int emailid) {
		this.emailid = emailid;
	}
	private int id;//邮件编号
	private String text;//邮件内容
	private int bool;//是否已读  0代表为未读  1代表已已读
	private String inbox;//收件人的油箱
	private String sendemail;//发件人的油箱
	private Date createTime;//创建时间
	private int love;//是否收藏    0代表未收藏  1代表已收藏
	private String headtext;//标题
	private String createtime;
	
	public String getCreatetime() {
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		this.createtime = sim.format(createTime);
		return createtime;
	}
	public void setCreatetime(String createDate) {
		this.createtime = createDate;
	}
	public Email() {
		// TODO Auto-generated constructor stub
	}
	public Email(int id ,String text,int bool,String inbox,String sendemail,Date createTime,int love){
		this.id=id;
		this.text=text;
		this.bool = bool;
		this.inbox = inbox;
		this.sendemail =sendemail;
		this.createTime= createTime;
		this.love = love;
	}
	
	
	
	public String getHeadtext() {
		return headtext;
	}
	public void setHeadtext(String headtext) {
		this.headtext = headtext;
	}
	public int getLove() {
		return love;
	}
	public void setLove(int love) {
		this.love = love;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getBool() {
		return bool;
	}
	public void setBool(int bool) {
		this.bool = bool;
	}
	public String getInbox() {
		return inbox;
	}
	public void setInbox(String inbox) {
		this.inbox = inbox;
	}
	public String getSendemail() {
		return sendemail;
	}
	public void setSendemail(String sendemail) {
		this.sendemail = sendemail;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	
}
