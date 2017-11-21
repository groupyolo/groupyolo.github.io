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
	
	#inquiryreply th {
		width:178px;
	}
	#inquiryreplyi th {
		width:178px;
	}
	#inquiryreplyii td{
		
	}
	

	
</style>
		
<script>
	
	
	$(document).ready(function() {
		
	});
</script>
		

</head>
<body>

	<h1  align="center">문의 게시판</h1>
	
	<div class="container">
	<div align="center">
	<c:forEach items="${ivlist}" var="ivdto">
	<table class="table table-boader" id="inquiryView" width="400px" height="300px">
		<tr>
			<th>번호</th>
			<td>${ivdto.inquiryseq}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${ivdto.title}</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${ivdto.icontent}</td>
		</tr>
		<tr>
			<th>등록시간</th>
			<td>${ivdto.enrolltime }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${ivdto.hits}</td>
		</tr>
		<%-- <tr>
			<td>내용</td>
			<td>${ibdto.content}</td>
			<td><a type="button" name="redel" onclick="location.href='${pageContext.request.contextPath}/admin/inquiryBoardDel.action?inquiryboardseq=${ibdto.inquiryboardseq}';">삭제</a>
		</tr> --%>
		
	</table>

	<c:forEach items="${iblist}" var="ibdto">
	<input type="hidden" name="inquiryseq" value="${ivdto.inquiryseq}">
	<input type="hidden" name="inquiryboardseq" value="${ibdto.inquiryboardseq}">
	
	<table class="table table-boader" id="inquiryreply">
		<tr>
			<th>댓글내용</th>
			<td>	
			${ibdto.content}
			</td>
			<td>
			<a type="button" name="redel" onclick="location.href='${pageContext.request.contextPath}/admin/inquiryBoardDel.action?inquiryboardseq=${ibdto.inquiryboardseq}';">삭제</a>
			</td>
		</tr>	
	</table>

	</c:forEach>
	
		</c:forEach>

	</div>
		
	
	<div align="center">
		<form action="${pageContext.request.contextPath}/admin/inquiryBoardOk.action" method="post">
		
		<table class="table table-boader" id="inquiryreplyi">
		<tr>
			<th>내용</th>
			<td width="500px"><textarea name="content" style="width:500px; resize:none;" requried></textarea>
			</td>
			<td><input type="submit" value="등록" style="height:46px;"></td>	
		</tr>
		</table>
		<input type="hidden" name="inquiryseq" value="${ivdto.inquiryseq}">
		<input type="button" value="뒤로가기" onclick="history.back();">
		<input type="button" value="글삭제" onclick="location.href='${pageContext.request.contextPath}/admin/inquiryDel.action?inquiryseq=${ivdto.inquiryseq}';">
		<input type="button" id="iedit" name="iedit" value="수정하기" onclick="location.href='${pageContext.request.contextPath}/admin/inquiryEdit.action?inquiryseq=${ivdto.inquiryseq}';" >
		</form>
	</div>
	</div>
		
		

	
</body>
</html>


















