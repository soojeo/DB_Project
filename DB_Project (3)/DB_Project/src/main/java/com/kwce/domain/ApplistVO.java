package com.kwce.domain;

public class ApplistVO {
	private int id;
	private String subj;
	private int credits;
	private int grade;
	private int major;
	private int sem;
	private float rate;
	private float major_rate;
	private float culture_rate;
	public float getMajor_rate() {
		return major_rate;
	}
	public void setMajor_rate(float major_rate) {
		this.major_rate = major_rate;
	}
	public float getCulture_rate() {
		return culture_rate;
	}
	public void setCulture_rate(float culture_rate) {
		this.culture_rate = culture_rate;
	}
	public float getRate() {
		return rate;
	}
	public void setRate(float rate) {
		this.rate = rate;
	}
	public int getSem() {
		return sem;
	}
	public void setSem(int sem) {
		this.sem = sem;
	}

	@Override
	public String toString() {
		return "ApplistVO [id=" + id + ", subj=" + subj + ", credits=" + credits + ", grade=" + grade + ", major="
				+ major + ", sem=" + sem + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSubj() {
		return subj;
	}
	public void setSubj(String subj) {
		this.subj = subj;
	}
	public int getCredits() {
		return credits;
	}
	public void setCredits(int credits) {
		this.credits = credits;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getMajor() {
		return major;
	}
	public void setMajor(int major) {
		this.major = major;
	}


}