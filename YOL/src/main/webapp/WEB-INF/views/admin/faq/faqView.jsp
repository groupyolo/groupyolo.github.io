<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<style>


	
</style>

<script>

	$(document).ready(function() {
		
		
		
	});
</script>
</head>
<body>

	<h1 align="center">FAQ 게시판</h1>
	
	<div class="container">
	<c:forEach items="${fvlist}" var="fvdto">
	<table class="table table-boader" id="faqView">
		<tr>
			<th>번호</th>
			<td>${fvdto.FAQseq}</td>
		</tr>
		<tr>
			<th>카테고리</th>
			<td>${fvdto.FAQCategoryseq}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${fvdto.title}</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${fvdto.fcontent}</td>
		</tr>
		<tr>
			<th>등록시간</th>
			<td>${fvdto.enrolltime}</td>
		</tr>
		<tr>
			<th>공개여부</th>
			<td>${fvdto.openseq}</td>
		</tr>
	</table>
	<div align="center">
		<input class="btn btn-normal" type="button" value="뒤로가기" onclick="history.back();">
		<input class="btn btn-normal" type="button" value="글삭제" onclick="location.href='${pageContext.request.contextPath}/admin/faqDel.action?FAQseq=${fvdto.FAQseq}';">
	</div>
		</c:forEach>
		</div>
	
</body>
</html>


















