<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<%@page import="java.util.*" %>
<%@page import="com.kwce.domain.SubjectVO"%>
<%@page import="com.kwce.domain.StudentVO"%>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"> ${student.stuname}님의 개인정보 조회 </h1>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<div class ="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
						   <th>이름</th>
						   <th>학번</th>
						   <th>학부</th>
						   <th>이메일</th>
						</tr>
					</thead>
						<tr>
						   <td>${student.stuname}</td>
						   <td>${student.id}</td>
						   <td>${student.department}</td>
						   <td>${student.email}</td>
						</tr>
				</table>
			</div><!--  end panel-body -->
		</div><!-- end panel -->
	</div><!--  /.col-lg-12 -->
</div><!--  /.row -->
