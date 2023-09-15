<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<div class="row">
   <div class="col-lg-12">
      <h1 class="page-header">강의정보</h1>
   </div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<div class="row">
   <div class="col-lg-12">
      <div class="panel panel-default">
         <div class="panel-heading">${lectureVO.sname}</div>
         <!-- /.page-heading -->
         <div class="panel-body">

            <div class="form-group">
               <label>교수님</label> 
               <span> ${lectureVO.professor}</span>
            </div>
            <div class="form-group">
               <label>과목번호</label> 
               <span> ${lectureVO.sno}</span>
            </div>
            <div class="form-group">
            
            
               <label>강의시간</label> 
               <span> ${lectureVO.stime}</span>
            </div>
            <div class="form-group">
               <label>정원</label> 
               <span> ${lectureVO.total}</span>
            </div>
            <div class="form-group">
               <label>담은 인원</label> 
               <span> ${lectureVO.apply}</span>
            </div>
            <div class="form-group">
               <label>학점</label> 
               <span> ${lectureVO.credit}</span>
            </div>
            <div class="form-group">
               <label>전공/비전공</label> 
               <span> ${lectureVO.major}</span>
            </div>
            <form name="form1" method="post" action="/lecture/read">
               <input type="hidden" name="id" value="${student.id}">
               <input type="hidden" name="subj" value="${lectureVO.sno}">
               <input type="hidden" name="credits" value="${lectureVO.credit}">
               <input type="hidden" name="major" value="${lectureVO.major}">
               <input id="app" type="submit"class="btn btn-warning" value="수강 신청">
            </form>
            <button id="CancelBtn" class="btn btn-danger">신청 취소</button>
            <button id="ListBtn" class="btn btn-default" onclick="location.href='/lecture/list'">강의 목록</button>
         </div><!-- end panel-body -->
            <form id="Form" method="post">
               <input type="hidden" name="sno" value="${lectureVO.sno}">
            </form> 
      </div>
      <!--  end panel-body -->
   </div>
   <!--  end panel panel -->
</div>
<!-- /.row -->
<script>
$(document).ready(function(){
   var Formobj=$("#Form");
   $("#app").on("click", function(){
	      alert("수강신청 완료됐습니다.");
	   });
   $("#ListBtn").on("click", function(){
      self.location="/lecture/list";
   });   
   $("#CancelBtn").on("click", function(){
      Formobj.attr("action","/lecture/cancel");
      Formobj.submit();
   });   
});
</script>
<%@include file="../include/footer.jsp"%>