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
	
	#inquiryBoard {
		border:1px solid blue;
	}
	
	#inquiryBoard th {border:1px solid red;}
	#inquiryBoard td {border:1px solid pink;}
	
</style>
		
<script>
	
	
	$(document).ready(function() {
		
	});
</script>
		

</head>
<body>

	<h1>문의 게시판</h1>
	
	
	<c:forEach items="${ivlist}" var="ivdto">
	<table id="noticeBoardView">
		<tr>
			<td>번호</td>
			<td>${ivdto.inquiryseq}</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${ivdto.title}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${ivdto.icontent}</td>
		</tr>
		<tr>
			<td>등록시간</td>
			<td>${ivdto.enrolltime }</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${ivdto.hits}</td>
		</tr>
		
	</table>

	<c:forEach items="${iblist}" var="ibdto">
	<input type="hidden" name="inquiryseq" value="${ivdto.inquiryseq}">
	<input type="hidden" name="inquiryboardseq" value="${ibdto.inquiryboardseq}">
	<table>
		<tr>
			<th>내용ㅋㅋㅋ</th>
			<td>	
			${ibdto.content}
			</td>
			<td>
			
			</td>
			<td>
			<a type="button" name="redel" onclick="location.href='${pageContext.request.contextPath}/admin/inquiryBoardDel.action?inquiryboardseq=${ibdto.inquiryboardseq}';">삭제</a>
			</td>
		</tr>	
	</table>
	</c:forEach>
	
		</c:forEach>
		
	
	<div>
		<form action="${pageContext.request.contextPath}/admin/inquiryBoardOk.action" method="post">
		<a>내용</a>
		<input type="text" name="content" style="width:200px; height:200px;">
		<input type="hidden" name="inquiryseq" value="${ivdto.inquiryseq}">
		<input type="submit" value="등록">
		</form>
	</div>
		
		<input type="button" value="뒤로가기" onclick="history.back();">
		<input type="button" value="글삭제" onclick="location.href='${pageContext.request.contextPath}/admin/inquiryDel.action?inquiryseq=${ivdto.inquiryseq}';">
		<input type="button" id="iedit" name="iedit" value="수정하기" onclick="location.href='${pageContext.request.contextPath}/admin/inquiryEdit.action?inquiryseq=${ivdto.inquiryseq}';" >
		

	
</body>
</html>


















