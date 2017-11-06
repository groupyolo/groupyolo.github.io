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
		$("#recruitMember").hide();
		
		alert(${mlist.size()});
	})
</script>
</head>
<body>
	<h1>팀 마스터 페이지</h1>
	<div id="projectTbl"> <!--  -->
		<table></table>
	</div>
	<div id="recruitTbl"> <!-- 모집중 -->
		<table>
			<tr>
				<th>제목</th>
				<th>시작일 ~ 종료일</th>
				<th>인원수</th>
			</tr>
			<c:if test="${mlist.size()} == 0">
				yes!!!
			</c:if>
			<c:if test="${mlist.size()} != 0">
				<c:forEach items="mlist" var="mdto">
				${mlist }
				<tr>
					<%-- <td>${mdto.jSubject}</td>
					<td>${mdto.jStart}~${mdto.jEnd}</td>
					<td>${mdto.mCount}</td> --%>
				</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
	<div id="recruitMember">
		<h3>신청자 리스트</h3>
		<table>
			<tr>
				<th>번호</th>
				<th>닉네임</th>
				<th>아이디</th>
				<th>신청일</th>
				<th>상태</th>
				<th>관리</th>
			</tr>
			<c:forEach items="">
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
				<td>5</td>
				<td>6</td>
			</tr>
			</c:forEach>
		</table>
	</div>	
</body>
</html>