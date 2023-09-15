<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<%@page import="java.util.*" %>
<%@page import="com.kwce.domain.SubjectVO"%>
<%@page import="com.kwce.domain.StudentVO"%>


<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">${student.stuname} 학생 시간표</h1>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
</head>
<body>
	<table class="table table-bordered">
 <thead >
    <tr class="text-center">
		<th scope="col" style="width:80px"></th>
     	<th scope="col" style="width:100px">월</th>
     	<th scope="col" style="width:100px">화</th>
     	<th scope="col" style="width:100px">수</th>
     	<th scope="col" style="width:100px">목</th>
     	<th scope="col" style="width:100px">금</th>
   </tr>
 </thead>
 <%
 ArrayList<SubjectVO> arr =(ArrayList<SubjectVO>)request.getAttribute("list");
 int size=1;
 size=arr.size();
 %>
 <tbody class="text-center">
   	<%for(int time=1; time<9; time++){ %>
   	<tr>
     	<th scope="row"><%= time %> 교시</th>
     	<%for(int i=1; i<6; i++){ %>
 	 		<td><%for(int j=0; j<size; j++){
 	 			if(arr.get(j).getStime()/1000==i && (arr.get(j).getStime()%1000)/100==time){%>
 	 				<%=arr.get(j).getSname()%>
 	 			<%}
 	 			if(((arr.get(j).getStime()%100)/10)==i && (arr.get(j).getStime()%10)==time){%>
 	 				<%=arr.get(j).getSname()%>
 	 			<%}
 	 			}%></td>
	  	<%}; %>
   	</tr>
   	<%};%>
 </tbody>
</table>
</body>
</html>