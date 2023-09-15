<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<%@page import="java.util.*" %>
<%@page import="com.kwce.domain.BoardVO"%>
<div class="row">

	<div class="col-lg-12">
		<h1 class="page-header"> 공지사항 </h1>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<div class ="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				공지사항
			</div><!--  /.panel-heading -->
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>			
							<th>과목번호</th>
						</tr>
					</thead>
					<c:forEach var="SubjectVO" items="${noticelist}">
                  <tr>
                           <td><a href='/board/list${pageMaker.makeSearch(pageMaker.cri.page) }&sno=${SubjectVO.sno}'> ${SubjectVO.sname} </a></td>
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