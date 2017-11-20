<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>Insert title here</title>

<script>
	
		

</script>

</head>
<body>	

	<h1 align="center">문의 게시판</h1>
	
	<div class="container">
		<table class="table table-boarder" id="inquiry">
			<thead>
			<colgroup>
				<col width="7%">	<!-- 글 번호 -->
				<col width="*">		<!--  제목   -->
				<col width="15%">	<!-- 등록시간 -->
				<col width="7%">	<!-- 조회수 -->
			</colgroup>
			
			<tr>
				<th style="text-align:center;">번호</th>
				<th style="text-align:center;">제목</th>
				<th style="text-align:center;">등록시간</th>
				<th style="text-align:center;">조회수</th>	
			</tr>
			</thead>
			
			<tdoby>
			<c:forEach items="${ilist}" var="idto">
			<tr>
				<td style="text-align:center;">${idto.inquiryseq}</td>
				<td><a id="a1" href="${pageContext.request.contextPath}/admin/inquiryView.action?inquiryseq=${idto.inquiryseq}">${idto.title}</a></td>
				<td style="text-align:center;">${idto.enrolltime.substring(0,19)}</td>
				<td style="text-align:center;">0</td>
			</tr>
			</c:forEach>
			</tdoby>
		</table>
		
		<input class="btn btn-normal pull-right" type="button" value="글쓰기" onclick="location.href='/web/admin/inquiryadd.action';">
	</div>
	
</body>
</html>