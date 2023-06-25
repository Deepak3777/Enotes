package com.enotes.Beans;

import java.util.Date;
public class note {
	private int id;
	private String title;
	private String desc;
	private Date ndate;
	private User u;
	
	public note(int id, String title, String desc, Date ndate, User u) {
		super();
		this.id = id;
		this.title = title;
		this.desc = desc;
		this.ndate = ndate;
		this.u = u;
	}
	public note() {
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public Date getNdate() {
		return ndate;
	}
	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}
	public User getU() {
		return u;
	}
	public void setU(User u) {
		this.u = u;
	}
	

}
