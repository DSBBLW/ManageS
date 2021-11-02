package com.pojo;

public class Course {
	private int id;//课程ID
	private int thid;//教师ID
	private int timeid;//时间ID
	private int roomid;//教室ID
	private int classid;//班级ID
	private String tname;//教室名字
	private String date;//星期时间:周一、周二
	private String time;//时间:上午、下午
	private String cname;//班级名字
	private String thname;//教师名字
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getThid() {
		return thid;
	}
	public void setThid(int thid) {
		this.thid = thid;
	}
	public int getTimeid() {
		return timeid;
	}
	public void setTimeid(int timeid) {
		this.timeid = timeid;
	}
	public int getRoomid() {
		return roomid;
	}
	public void setRoomid(int roomid) {
		this.roomid = roomid;
	}
	public int getClassid() {
		return classid;
	}
	public void setClassid(int classid) {
		this.classid = classid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getThname() {
		return thname;
	}
	public void setThname(String thname) {
		this.thname = thname;
	}
	public Course(int id, int thid, int timeid, int roomid, int classid,
			String tname, String date, String time, String cname, String thname) {
		super();
		this.id = id;
		this.thid = thid;
		this.timeid = timeid;
		this.roomid = roomid;
		this.classid = classid;
		this.tname = tname;
		this.date = date;
		this.time = time;
		this.cname = cname;
		this.thname = thname;
	}
	@Override
	public String toString() {
		return "Course [id=" + id + ", thid=" + thid + ", timeid=" + timeid
				+ ", roomid=" + roomid + ", classid=" + classid + ", tname="
				+ tname + ", date=" + date + ", time=" + time + ", cname="
				+ cname + ", thname=" + thname + "]";
	}
	public Course() {
		
	}
}
