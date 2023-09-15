<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">공지사항</h1>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Modify Page</div>
			<!-- /.page-heading -->
			<div class="panel-body">
				
				<form role="form" method="post" action="/board/modify">
					<div class="form-group">
						<label>게시번호</label> <input class="form-control" name='bno' value="${boardVO.bno }">
					</div>
					<div class="form-group">
						<label>제목</label> <input class="form-control" name='title' value="${boardVO.title }">
					</div>
					<div class="form-gorup">
						<label>내용</label>
						<textarea class="form-control" rows="3" name='con'><c:out value="${boardVO.con }"/></textarea>
					</div>

					<div class="form-group">
						<label>과목 번호</label> <input class="form-control" name='snum' value='<c:out value="${boardVO.snum}"/>'>
					</div>
					<div class="form-group">
						<label>교수님</label> <input class="form-control" name='professor' value='<c:out value="${boardVO.professor}"/>'>
					</div>
					<div class="form-group">
						<label>작성자</label> <input class="form-control" name='writer' value="${boardVO.writer }">
					</div>
				<button id="ModiBtn" class="btn btn-default">Modify</button>
				<button id="list" class="btn btn-default">List</button>
				</form>
			</div>
			<!-- end panel-body -->
		</div>
		<!-- end panel-body -->
	</div>
	<!-- end panel -->
</div>
<!-- /.row -->
<script>
$(document).ready(function(){
	$("#ListBtn").on("click", function(){
		var formobj=$("form[role='form']");
		formobj.attr("action", "/board/list");
		formobj.attr("method", "get");
		formobj.submit();
	});
	
	$("#ModiBtn").on("click", function(){
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
		if($("input[name=snum]").val()==""){
			alert("과목번호를 입력하세요!");
			$("input[name='snum']").focus();
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