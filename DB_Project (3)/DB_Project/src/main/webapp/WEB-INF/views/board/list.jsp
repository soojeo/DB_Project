<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<%@page import="java.util.*" %>
<%@page import="com.kwce.domain.SubjectVO"%>
<div class="row">

	<div class="col-lg-12">
		<h1 class="page-header"> 공지사항 </h1>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<div class ="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
		
			<select name="searchType">
				<option value="n"
					<c:out value="${cri.searchType == null?'selected':''}"/>>
					---</option>
				<option value="t"
					<c:out value="${cri.searchType eq 't'?'selected':''}"/>>제목</option>
				<option value="c"
					<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>내용</option>
				<option value="w"
					<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>작성자</option>
				<option value="tc"
					<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
					제목+ 내용</option>
				<option value="cw"
					<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
					내용 + 작성자</option>
				<option value="tcw"
					<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
					제목 + 내용 + 작성자</option>
			</select>
			<input type="text" name='keyword' id="keywordInput"
				value='${cri.keyword }'>
			<button type="button"  class="btn btn-xs"  id='searchBtn'>검색</button>
			<div class="panel-heading">
				공지사항
				<button id='regBtn' type="button" onclick="location.href='/board/register'" class="btn btn-xs pull-right">새로운 공지 등록하기</button>  
			</div><!--  /.panel-heading -->
			
				
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>#번호</th>
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
							<td>${boardVO.bno}</td>
                     		<td><a href='/board/read${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardVO.bno}&sno=${boardVO.snum}'> ${boardVO.title} </a></td>
							<td>${boardVO.writer}</td>
							<td>${boardVO.snum}</td>
							<td>${boardVO.professor}</td>
							<fmt:parseDate pattern="yyyy-MM-dd HH:mm" value='${boardVO.ndate}' var='indate' />
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${indate}" /></td>
							<td><span class="badge bg-red">${boardVO.views}</span></td>
						</tr>
					</c:forEach>	
				</table>
				<c:if test="${pageMaker.prev}">
					<a href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">«</a>
				</c:if>
				<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
					var="idx">
					
					<c:out value="${pageMaker.cri.page == idx?'':''}" />
					<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
					
				</c:forEach>
				
				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<a href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">
						» </a>
						
				</c:if> 
				<br>
					
				<script type="text/javascript"
					src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
				<script type="text/javascript">
					
					$(document).ready(
							function() {
								
								$('#searchBtn').on(
									"click",
									function(event) {
											
										str = "list"
										+ '${pageMaker.makeQuery(1)}'
										+ "&searchType="
										+ $("select option:selected").val()
										+ "&keyword=" + encodeURIComponent($('#keywordInput').val());
											
										console.log(str);
											
										self.location = str;
											
									});
								$('#newBtn').on("click", function(evt) {
									
									self.location = "regist";
									
								});
						});
				</script>
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