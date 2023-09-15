package com.kwce.domain;
//login 할때 사용
public class MemberVO {
   private String stuname;
   private int id;
   private int major;
   private int semester;
   private String department ;
   private int credits;
   private String app_list;
   private int grade;
   private int pass;
   public String getStuname() {
      return stuname;
   }
   public void setStuname(String stuname) {
      this.stuname = stuname;
   }
   
   @Override
   public String toString() {
      return "StudentVO [stuname=" + stuname + ", id=" + id + ", major=" + major + ", semester=" + semester
            + ", department=" + department + ", credits=" + credits + ", app_list=" + app_list + ", grade=" + grade
            + "]";
   }
   public int getId() {
      return id;
   }
   public void setId(int id) {
      this.id = id;
   }
   public int getMajor() {
      return major;
   }
   public void setMajor(int major) {
      this.major = major;
   }
   public int getSemester() {
      return semester;
   }
   public void setSemester(int semester) {
      this.semester = semester;
   }
   public String getDepartment() {
      return department;
   }
   public void setDepartment(String department) {
      this.department = department;
   }
   public int getCredits() {
      return credits;
   }
   public void setCredits(int credits) {
      this.credits = credits;
   }
   public String getApp_list() {
      return app_list;
   }
   public void setApp_list(String app_list) {
      this.app_list = app_list;
   }
   public int getGrade() {
      return grade;
   }
   public void setGrade(int grade) {
      this.grade = grade;
   }
   public int getPass() {
      return pass;
   }
   public void setPass(int pass) {
      this.pass = pass;
   }
}