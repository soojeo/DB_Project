package com.kwce.domain;

public class AskVO{
	private String stuname;
	private String professor;
	private String ndate;
	private String title;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCon() {
		return con;
	}
	public void setCon(String con) {
		this.con = con;
	}
	private String con;
	public String getStuname() {
		return stuname;
	}
	public void setStuname(String stuname) {
		this.stuname = stuname;
	}
	public String getProfessor() {
		return professor;
	}
	@Override
	public String toString() {
		return "AskVO [stuname=" + stuname + ", professor=" + professor + ", ndate=" + ndate + ", title=" + title
				+ ", con=" + con + "]";
	}
	public void setProfessor(String professor) {
		this.professor = professor;
	}
	public String getNdate() {
		return ndate;
	}
	public void setNdate(String ndate) {
		this.ndate = ndate;
	}

}