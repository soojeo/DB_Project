<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">질문 목록</h1>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<div class ="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			
			<div class="panel-heading">
				내가 한 질문 목록
				<button id='regBtn' type="button" onclick="location.href='/board/askregister'" class="btn btn-xs pull-right">새로운 질문 등록하기</button>
			</div><!--  /.panel-heading -->
			
			
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th style="width:44%">제목</th>
							<th style="width:15%">작성자</th>
							<th style="width:15%">교수님</th>
							<th style="width:26%">작성일</th>
						</tr>
					</thead>
					<c:forEach var="AskVO" items="${list}">
						<tr>
							<td><a>${AskVO.title}</a></td>
							<td>${AskVO.stuname}</td>
							<td>${AskVO.professor}</td>
							<fmt:parseDate pattern="yyyy-MM-dd HH:mm" value='${AskVO.ndate}' var='indate' />
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${indate}" /></td>
						</tr>
					</c:forEach>	
	
				</table>

			</div><!--  end panel-body -->
		</div><!-- end panel -->
	</div><!--  /.col-lg-12 -->
</div><!--  /.row -->

<script>
	var result = '${msg}';
	
	if(result == 'SUCCESS'){
		alert("처리가 완료되었습니다.");
	}
	
	</script>
<%@include file="../include/footer.jsp"%>