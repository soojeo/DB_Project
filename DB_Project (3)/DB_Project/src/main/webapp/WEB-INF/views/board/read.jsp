<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<%@page import="java.util.*" %>
<%@page import="com.kwce.domain.SubjectVO"%>
<%@page import="com.kwce.domain.BoardVO"%>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">${boardVO.title}</h1>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading"></div>
			<!-- /.page-heading -->
			<div class="panel-body">

				<div class="form-group">
					<label>제목</label> <input class="form-control" name='title' value='<c:out value="${boardVO.title}"/>' readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>내용</label> <textarea class="form-control" rows="3" name ='con' readonly="readonly"><c:out value="${boardVO.con}"/></textarea>
				</div>
				<div class="form-group">
					<label>과목 번호</label> <input class="form-control" name='snum' value='<c:out value="${boardVO.snum}"/>'readonly="readonly">
				</div>
				<div class="form-group">
					<label>교수님</label> <input class="form-control" name='professor' value='<c:out value="${boardVO.professor}"/>'readonly="readonly">
				</div>
				<div class="form-group">
					<label>작성자</label> <input class="form-control" name='writer' value='<c:out value="${boardVO.writer}"/>'readonly="readonly">
				</div>
				<button id="ModiBtn" class="btn btn-default">Modify</button>
				<button id="ListBtn" class="btn btn-default" onclick="location.href='/board/list${pageMaker.makeSearch(pageMaker.cri.page) }'">List</button>
				<button id="DelBtn" class="btn btn-default">Delete</button>
			</div><!-- end panel-body -->
            <form id="Form" method="post">
               <input type="hidden" name="bno" value="${boardVO.bno}">
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

	$("#ModiBtn").on("click",function(){
		Formobj.attr("action","/board/modify");
		Formobj.attr("method", "get");
		Formobj.submit();
	});
	$("#ListBtn").on("click", function(){
		self.location="/board/list";
	});
	$("#DelBtn").on("click", function(){
		Formobj.attr("action","/board/remove");
		Formobj.submit();
	});	
});
</script>
<%@include file="../include/footer.jsp"%>