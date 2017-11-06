<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<script>
	$(document).ready(function() {
		
	})
</script>
</head>
<body>
	<h1>팀원구하기용</h1>
	
	<div id="searchBox">
		<form action="" method="get">
			<select name="" id="">
				<option value=""></option>
			</select>
			<select name="" id="">
				<option value="">제목</option>
				<option value="">글쓴이</option>
			</select>
			<input type="text" />
			<input type="submit" value="검색" />
		</form>
	</div>
	<div id="listTbl"></div>
	<table class="tbl">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>기간</th>
				<th>인원수</th>
				<th>글쓴이</th>
				<th>날짜</th>
				<th>상태</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.reSeq}</td>
				<td><a href="${pageContext.request.contextPath}/member/joinTeamView.action?reSeq=${dto.reSeq}">${dto.jSubject}</a></td>
				<td>${dto.jStart}~${dto.jEnd}</td>
				<td>${dto.mCount}/${dto.jCount}</td>
				<td>${dto.mNickName}</td>
				<td>${dto.jRegDate}</td>
				<td>${dto.sName}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<div id="bottomPaging">
		페이징
	</div>
	<div id="btns_list">
		<input type="button" value="글쓰기" onclick="location.href='${pageContext.request.contextPath}/member/joinTeamAdd.action';"/>
	</div>
</body>
</html>