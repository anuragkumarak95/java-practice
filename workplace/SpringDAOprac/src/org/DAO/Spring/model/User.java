package org.DAO.Spring.model;

public class User {
	private int uid;
	private String uname;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	
	public User(int uid,String uname){
		this.uid = uid;
		this.uname = uname;
	}
	public User() {
		// TODO Auto-generated constructor stub
	}
}
