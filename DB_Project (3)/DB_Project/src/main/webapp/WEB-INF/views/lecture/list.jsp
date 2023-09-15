<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"> 수강 신청 </h1>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<div class ="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			
			
			
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
						   <th>과목</th>
						   <th>교수</th>
						   <th>과목번호</th>
						   <th>수업시간</th>
						   <th>정원</th>
						   <th>담은 인원</th>
						   <th>학점</th>
						   <th>전공/비전공</th>
						</tr>
					</thead>
					<c:forEach var="LectureVO" items="${list}">
						<tr>
						   <td><a href='/lecture/read?sno=${LectureVO.sno}'>${LectureVO.sname}</a></td>
						   <td>${LectureVO.professor}</td>
						   <td>${LectureVO.sno}</td>
						   <td>${LectureVO.stime}</td>
						   <td>${LectureVO.total}</td>
						   <td>${LectureVO.apply}</td>
						   <td>${LectureVO.credit}</td>
						   <td>${LectureVO.major}</td>
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
