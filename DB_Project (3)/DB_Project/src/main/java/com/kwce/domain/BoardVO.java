package com.kwce.domain;
//import java.util.Date;

public class BoardVO{
	private int bno;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	private String title;
	private String con;
	private String writer;
	private String professor;
	private String ndate;
	private int views;
	private String snum;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCon() {
		return con;
	}

	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", con=" + con + ", writer=" + writer + ", professor="
				+ professor + ", ndate=" + ndate + ", views=" + views + ", snum=" + snum + "]";
	}
	public void setCon(String con) {
		this.con = con;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getProfessor() {
		return professor;
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
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getSnum() {
		return snum;
	}
	public void setSnum(String snum) {
		this.snum = snum;
	}
	

}