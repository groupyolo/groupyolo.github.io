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

	<h1 align="center">문의사항 수정 게시판</h1>
	
	<div id="inquiryEdit" align="center">
	<c:forEach items="${ivlist}" var="ivdto">
	<form action="${pageContext.request.contextPath}/admin/inquiryEditOk.action" method="post">
	<table id="inquiryEdit" style="width:500px;">
		<tr>
			<td>번호</td>
			<td>${ivdto.inquiryseq}</td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input name="title" type="text" value="${ivdto.title}" ></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input name="icontent" type="text" value="${ivdto.icontent}"></td>
		</tr>
		<tr>
			<td>등록시간</td>
			<td>${ivdto.enrolltime}</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${ivdto.hits}</td>
		</tr>
		
	</table>
		
		<input type="hidden" name="inquiryseq" value="${ivdto.inquiryseq}" >
		<input type="button" value="뒤로가기" onclick="history.back();">
		<input type="submit" id="iedit" name="iedit" value="수정완료" >

	</form>
		</c:forEach>
	</div>
	
</body>
</html>


















