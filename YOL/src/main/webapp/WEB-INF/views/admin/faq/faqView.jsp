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
	#noticeBoardView {
		border:1px solid blue;
	}
	
	#noticeBoardView th {border:1px solid red;}
	#noticeBoardView td {border:1px solid pink;}
	
	
</style>

<script>

	$(document).ready(function() {
		
		
		
	});
</script>
</head>
<body>

	<h1>FAQ 게시판</h1>
	
	
	<c:forEach items="${fvlist}" var="fvdto">
	<table id="faqView" align="center" width="400px" height="300px">
		<tr>
			<td>번호</td>
			<td>${fvdto.FAQseq}</td>
		</tr>
		<tr>
			<td>카테고리</td>
			<td>${fvdto.FAQCategoryseq}</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${fvdto.title}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${fvdto.fcontent}</td>
		</tr>
		<tr>
			<td>등록시간</td>
			<td>${fvdto.enrolltime}</td>
		</tr>
		<tr>
			<td>공개여부</td>
			<td>${fvdto.openseq}</td>
		</tr>
	</table>
	<div align="center">
		<input type="button" value="뒤로가기" onclick="history.back();">
		<input type="button" value="글삭제" onclick="location.href='${pageContext.request.contextPath}/admin/faqDel.action?FAQseq=${fvdto.FAQseq}';">
	</div>
		</c:forEach>
	
</body>
</html>


















