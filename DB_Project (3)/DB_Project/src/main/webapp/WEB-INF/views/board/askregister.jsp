<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">질문 하기</h1>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<div class="row">
	<div class = "col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">질문 양식</div><!-- /.panel-heading -->
				<div class="panel-body">
					<form role="form" action="/board/askregister" method="post">
						<div class="from-group">
							<label>제목</label> <input class="form-control" name='title'>
						</div>
						<div class="form-group">
							<label>내용</label>
							<textarea class="form-control" rows="3" name='con'></textarea>
						</div>
						<div class="form-group">
							<label>작성자</label><input class="form-control" name='stuname'>
						</div>
						
						<div class="form-group">
							<label>교수님</label><input class="form-control" name='professor'>
						</div>
						<button id="SubmitBtn" type ="submit" class="btn btn-default" >질문 등록</button>
						
						<button type="reset" class ="btn btn-default">양식 초기화</button>
						
						<button id="asklist" class = "btn btn-default">목록</button>
					</form>
				</div><!-- end panel-body -->
		</div><!-- end panel-body -->
	</div><!-- end panel -->
</div><!-- /.row -->
<script>
$(document).ready(function(){
	var Formobj=$("form[role='form']");
	
	$("#ListBtn").on("click", function(){
		Formobj.attr("action", "/board/asklist");
		Formobj.attr("method", "get");
		Formobj.submit();
	});
	
	$("#SubmitBtn").on("click", function(){
		if($("input[name=title]").val()==""){
			alert("제목을 입력하세요!");
			$("input[name='title']").focus();
			return false;
		}
		if($("input[name=con]").val()==""){
			alert("내용을 입력하세요!");
			$("input[name='con']").focus();
			return false;
		}
		if($("input[name=writer]").val()==""){
			alert("작성자를 입력하세요!");
			$("input[name='writer']").focus();
			return false;
		}
		if($("input[name=professor]").val()==""){
			alert("제목을 입력하세요!");
			$("input[name='professor']").focus();
			return false;
		}		
	});
});
</script>
<%@include file="../include/footer.jsp"%>