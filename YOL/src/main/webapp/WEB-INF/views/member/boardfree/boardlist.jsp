<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<table>
		<tr>
			<th>번호</th><th>말머리</th><th>제목</th><th>글쓴이</th><th>날짜</th><th>조회수</th>
		</tr>
		<c:forEach items="${fblist}" var="list">
		<tr>
			<td>${list.fbSeq}</td><td>${list.fbCategory}</td><td><a href="${pageContext.request.contextPath}/community/freeboard/boardview.action?fbSeq=${list.fbSeq }">${list.fbName}</a></td><td>${list.mNickName }</td><td>${list.fbTime }</td><td>${fbVCount }</td>
		</tr>		
		</c:forEach>	
	</table>
	<input type="button" value="글쓰기" onclick="location.href='${pageContext.request.contextPath}/community/freeboard/boardadd.action';" />