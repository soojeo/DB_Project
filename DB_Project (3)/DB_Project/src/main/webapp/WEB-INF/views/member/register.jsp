<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/homeheader.jsp"%>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">회원 가입</h1>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
 </script>
   <body>
      <section id="container">
         <form action="/member/register" method="post">
            <div class="form-group has-feedback">
               <label class="control-label" for="stuname">성명(ex.홍길동)</label>
               <input class="form-control" type="text" id="stuname" name="stuname" />
            </div>
            <div class="form-group has-feedback">
               <label class="control-label" for="id">학번(ex.2018202000)</label>
               <input class="form-control" type="text" id="text" name="id" />
            </div>
            <div class="form-group has-feedback">
               <label class="control-label" for="pass">패스워드(ex.1234)</label>
               <input class="form-control" type="password" id="pass" name="pass" />
            </div>
            <div class="form-group has-feedback">
               <label class="control-label" for="department">학과(부)(ex.컴퓨터공학부)</label>
               <input class="form-control" type="text" id="department" name="department" />
            </div>
            <div class="form-group has-feedback">
               <label class="control-label" for="email">이메일(ex.abc@naver.com)</label>
               <input class="form-control" type="text" id="" name="email" />
            </div>
            <div class="form-group has-feedback">
               <button class="btn btn-success" type="submit" id="submit">회원가입</button>
               <button class="cencle btn btn-danger" type="button"  onclick="location.href='/'">취소</button>
            </div>
         </form>
      </section>
   </body>
   <script>
	$(document).ready(function(){
	var Formobj=$("form[role='form']");
	
	$("#ListBtn").on("click", function(){
		Formobj.attr("action", "/");
		Formobj.attr("method", "get");
		Formobj.submit();
	});
	
	$("#submit").on("click", function(){
        if($("#stuname").val()==""){
           alert("성명을 입력해주세요.");
           $("#stuname").focus();
           return false;
        }
        if($("#id").val()==""){
           alert("학번을 입력해주세요.");
           $("#id").focus();
           return false;
        }
        if($("#pass").val()==""){
           alert("비밀번호를 입력해주세요.");
           $("#pass").focus();
           return false;
        }
        if($("#department").val()==""){
           alert("학과(부)를 입력해주세요.");
           $("#department").focus();
           return false;
        }
        if($("#email").val()==""){
           alert("이메일을 입력해주세요.");
           $("#email").focus();
           return false;
        }
     });
});
</script>
</html>    