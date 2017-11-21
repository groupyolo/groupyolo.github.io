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
	
	<div class="container">
	<c:forEach items="${ivlist}" var="ivdto">
	<form action="${pageContext.request.contextPath}/admin/inquiryEditOk.action" method="post">
	<table class="table table-boader" id="inquiryEdit" width="400px" height="300px">
		<tr>
			<th>번호</th>
			<td>${ivdto.inquiryseq}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input name="title" type="text" value="${ivdto.title}" style="width:500px;" ></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><input name="icontent" type="text" value="${ivdto.icontent}" style="width:500px;"></td>
		</tr>
		<tr>
			<th>등록시간</th>
			<td>${ivdto.enrolltime}</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${ivdto.hits}</td>
		</tr>
		
	</table>
		
		<div align="center">
		<input class="btn btn-normal" type="hidden" name="inquiryseq" value="${ivdto.inquiryseq}" >
		<input class="btn btn-normal" type="button" value="뒤로가기" onclick="history.back();">
		<input class="btn btn-normal" type="submit" id="iedit" name="iedit" value="수정완료" >
		</div>

	</form>
		</c:forEach>
	</div>
	
</body>
</html>


















