package com.pojo;

public class ClassRoom {
	private int id;
	private String tname;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public ClassRoom(int id, String tname) {
		super();
		this.id = id;
		this.tname = tname;
	}
	public ClassRoom() {

	}
}
