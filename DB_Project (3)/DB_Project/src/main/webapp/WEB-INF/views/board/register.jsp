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
	<div class = "col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">공지사항 양식</div><!-- /.panel-heading -->
				<div class="panel-body">
					<form role="form" action="/board/register" method="post">
						<div class="from-group">
							<label>제목</label> <input class="form-control" name='title'>
						</div>
						<div class="form-group">
							<label>내용</label>
							<textarea class="form-control" rows="3" name='con'></textarea>
						</div>
						<div class="form-group">
							<label>글쓴이</label><input class="form-control" name='writer'>
						</div>
						
						<div class="form-group">
							<label>과목 코드</label><input class="form-control" name='snum'>
						</div>
						
						<div class="form-group">
							<label>교수님</label><input class="form-control" name='professor'>
						</div>
						<button id="SubmitBtn" type ="submit" class="btn btn-default" >공지 등록</button>
						
						<button type="reset" class ="btn btn-default">양식 초기화</button>
						
						<button id="list" class = "btn btn-default" onclick="location.href='/board/list'">목록</button>
					</form>
				</div><!-- end panel-body -->
		</div><!-- end panel-body -->
	</div><!-- end panel -->
</div><!-- /.row -->
<script>
$(document).ready(function(){
	var Formobj=$("form[role='form']");
	
	$("#ListBtn").on("click", function(){
		Formobj.attr("action", "/board/list");
		Formobj.attr("method", "get");
		Formobj.submit();
	});

	$("#list").on("click", function(){
		self.location="/board/list";
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