package com.kwce.domain;

//login 할때 사용
public class StudentVO {
   private String stuname;
   private int id;
   private String department;
   private int pass;
   private String email;
   
   public String getStuname() {
      return stuname;
   }
   public void setStuname(String stuname) {
      this.stuname = stuname;
   }
   
   @Override
   public String toString() {
      return "StudentVO [stuname=" + stuname + ", id=" + id + ", department=" + department +", pass=" + pass+", email=" + email+ "]";
   }
   public int getId() {
      return id;
   }
   public void setId(int id) {
      this.id = id;
   }
   
   public String getDepartment() {
      return department;
   }
   public void setDepartment(String department) {
      this.department = department;
   }
   
   public int getPass() {
      return pass;
   }
   public void setPass(int pass) {
      this.pass = pass;
   }
   
   public String getemail() {
     return email;
   }
   
   public void setemail(String email) {
     this.email = email;
   }
   
}