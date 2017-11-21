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
	<h1 align="center">공지사항 게시판</h1>
	
	<div class="container">
	<c:forEach items="${vlist}" var="vdto">
	<table class="table table-boader" id="noticeBoardView" align="center">
		<tr>
			<td>제목</td>
			<td>${vdto.title}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${vdto.ncontent}</td>
		</tr>
		<tr>
			<td>등록시간</td>
			<td>${vdto.enrolltime}</td>
		</tr>
		<tr>
			<td>노출시간</td>
			<td>${vdto.startExp}</td>
		</tr>
		<tr>
			<td>노출끝시간</td>
			<td>${vdto.endExp}</td>
		</tr>
		<%-- <input type="hidden" value="${vdto.noticeboardseq}"> --%>
	</table>
	<div align="center">
		<input type="button" value="뒤로가기" onclick="history.back();">
		<input type="button" value="글삭제" onclick="location.href='${pageContext.request.contextPath}/admin/noticeBoardDel.action?noticeboardseq=${vdto.noticeboardseq}';">
	</div>
		</c:forEach>
		</div>
	
</body>
</html>


















