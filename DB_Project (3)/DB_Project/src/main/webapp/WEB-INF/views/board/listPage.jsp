<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Food==Happiness</h1>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<div class ="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			
			<div class="panel-heading">
				오늘의 행복을 선택해라
				<button id='regBtn' type="button" onclick="location.href='/board/register'" class="btn btn-xs pull-right">Register New Board</button>
			</div><!--  /.panel-heading -->
			
			
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>#번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>수정일</th>
							<th>조회수</th>
							<th>좋아요</th>
						</tr>
					</thead>
					
					<c:forEach var="boardVO" items="${list}">
						<tr>
							<td>${boardVO.bno}</td>
							<td><a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>
							<td>${boardVO.writer}</td>
							<fmt:parseDate pattern="yyyy-MM-dd HH:mm" value='${boardVO.regdate}' var='indate' />
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${indate}" /></td>
							<fmt:parseDate pattern="yyyy-MM-dd HH:mm" value='${boardVO.newdate}' var='redate' />	
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${redate}"/></td>
							<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
							<td><span class="badge bg-red">${boardVO.likecnt }</span></td>
						</tr>
					</c:forEach>	
				</table>
					<c:if test="${pageMaker.prev}">
						<a href="listPage${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
					</c:if>
					<c:forEach begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }" var="idx">
						<c:out value="${pageMaker.cri.page == idx?'':''}" />
						<a href="listPage${pageMaker.makeQuery(idx)}">${idx}</a>
					</c:forEach>
					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<a href="listPage${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
					</c:if> <br>
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