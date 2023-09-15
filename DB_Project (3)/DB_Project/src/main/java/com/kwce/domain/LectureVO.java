package com.kwce.domain;
//import java.util.Date;

public class LectureVO{
	private String sname;
	private String professor;
	private String sno;
	private int stime;
	private int total;
	private int apply;
	private int credit;
	private int major;
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getProfessor() {
		return professor;
	}
	public void setProfessor(String professor) {
		this.professor = professor;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public int getStime() {
		return stime;
	}
	public void setStime(int stime) {
		this.stime = stime;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getApply() {
		return apply;
	}
	public void setApply(int apply) {
		this.apply = apply;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	public int getMajor() {
		return major;
	}
	public void setMajor(int major) {
		this.major = major;
	}
	@Override
	public String toString() {
		return "LectureVO [sname=" + sname + ", professor=" + professor + ", sno=" + sno + ", stime=" + stime
				+ ", total=" + total + ", apply=" + apply + ", credit=" + credit + ", major=" + major + "]";
	}


}