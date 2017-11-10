<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#noticeboard {
	border: 1px solid blue;
	
	}
	
	#noticeboard th {
	border: 1px solid blue;
	}
	
	#noticeboard td {
	border: 1px solid red;
	}
	
	
	
</style>
</head>
<body>	
오징?어튀김

	<h1 align="center">공지사항 게시판</h1>
	
	<div>
	<div>
		<table id="noticeboard" align="center" width="1000px" height="100px">
			<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>등록시간</th>	
			</tr>
			</thead>
			
			<tdoby>
			<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.noticeboardseq}</td>
				<td><a href="${pageContext.request.contextPath}/admin/noticeBoardView.action?noticeboardseq=${dto.noticeboardseq}">${dto.title}</a></td>
				<td>${dto.enrolltime.substring(0,10)}</td>
			</tr>
			</c:forEach>
			</tdoby>
		</table>
	</div>
		
		<div align="right">
		<input type="button" value="글쓰기" onclick="location.href='/web/admin/noticeBoardadd.action';" align="right">
		</div>
	</div>
	
</body>
</html>