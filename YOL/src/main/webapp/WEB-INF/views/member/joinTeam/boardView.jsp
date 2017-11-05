<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글보기</h1>
	
	<div id="viewTbl">
		<table class="tbl">
			<tr>
				<td>${tdto.mName}</td>
				<td>${tdto.jRegDate}</td>
			</tr>
			<tr>
				<th>${tdto.jSubject}</th>
			</tr>
			<tr>
				<td><!-- 현재 승인완료 인원 수 체크해서 반영 -->
					0 / ${tdto.jCount}
				</td>
				<td>${tdto.jStart} ~ ${tdto.jEnd}</td>
			</tr>
			<tr>
				<td>${tdto.jContent}</td>
			</tr>
		</table>
	</div>
	<div id="applyTbl">
		<table>
			<tr>
				<td>멤버 신청자</td>
			</tr>
			<tr>
				<th>닉네임</th>
				<th>신청시간</th>
				<th>상태</th>				
			</tr>
			<c:forEach items="${mlist}" var="mdto">
			<tr>
				<td>${mdto.mNickName}</td>
				<td>${mdto.jRegDate}</td>
				<td>${mdto.gradeName}</td>
			</tr>
			</c:forEach>
		</table>
	<!-- ajax로 -->
		<form action="${pageContext.request.contextPath}/member/joinMemberAddOk.action" method="get">
			 <input type="submit"  value="멤버신청"/>
		</form>
		<!-- 조건; 신청이 완료된 멤버 && 모집글 마감 전 -->
		<form action="${pageContext.request.contextPath}/member/joinMemberCancleOk.action" method="get">
			 <input type="submit"  value="멤버취소"/>
		</form>
	<!-- 여기까지 ajax -->
	</div>
</body>
</html>