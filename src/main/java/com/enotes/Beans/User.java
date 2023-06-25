package com.enotes.Beans;

public class User {
	private String fname;
	private String mail;
	private String pass;
	public int id;
	
	
	public User(String fname, String mail, String pass, int id) {
		super();
		this.fname = fname;
		this.mail = mail;
		this.pass = pass;
		this.id = id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User() {
		
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	

}
