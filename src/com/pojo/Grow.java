package com.pojo;

public class Grow {
	private int id;
	private int stuid;
	private int result;
	private int mbool;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStuid() {
		return stuid;
	}
	public void setStuid(int stuid) {
		this.stuid = stuid;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public int getMbool() {
		return mbool;
	}
	public void setMbool(int mbool) {
		this.mbool = mbool;
	}
	public Grow(int id, int stuid, int result, int mbool) {
		super();
		this.id = id;
		this.stuid = stuid;
		this.result = result;
		this.mbool = mbool;
	}
	public Grow() {

	}
}
