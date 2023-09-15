<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">공지 사항 </h1>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<div class ="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			
			<div class="panel-heading">
				공지사항
				<button id='regBtn' type="button" onclick="location.href='/controller/board/register'" class="btn btn-xs pull-right">새로운 공지 등록하기</button>
			</div><!--  /.panel-heading -->
			
			
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>제목</th>
							<th>작성자</th>
							<th>과목번호</th>
							<th>교수님</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<c:forEach var="boardVO" items="${list}">
						<tr>
							<td><a>${boardVO.title}</a></td>
							<td>${boardVO.writer}</td>
							<td>${boardVO.snum}</td>
							<td>${boardVO.professor}</td>
							<fmt:parseDate pattern="yyyy-MM-dd HH:mm" value='${boardVO.ndate}' var='indate' />
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${indate}" /></td>
							<td><span class="badge bg-red">${boardVO.views}</span></td>
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