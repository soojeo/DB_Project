<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="./include/homeheader.jsp"%>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">마광석 학생관리 시스템에 오신걸 환영합니다</h1>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<script type="text/javascript">
   $(document).ready(function(){
      $("#logoutBtn").on("click", function(){
         location.href="member/logout";
      })
      
   })
</script>
<body>
   <form name='homeForm' method="post" action="/member/login">
      <c:if test="${student == null}">
         <div>
            학번 (ID):<label for="id"></label>
            <input type="text" id="id" name="id">
         </div><br>
         <div>
            비밀번호:<label for="pass"></label>
            <input type="password" id="pass" name="pass">
         </div><br>
         <div>
            <button type="submit">로그인</button>
            <button type="button"  onclick="location.href='/member/register'">회원가입</button>
         </div>
         
         
      </c:if>
      <c:if test="${student != null }">
         <div>
            <p>${student.stuname}님 환영 합니다.</p>
            <button id='ok' type="button" onclick="location.href='/board/noticelist'">확인</button>
            <button id="logoutBtn" type="button">로그아웃</button>
         </div>
      </c:if>
      <c:if test="${msg == false}">
         <p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
      </c:if>
   </form>
</body>
</html>