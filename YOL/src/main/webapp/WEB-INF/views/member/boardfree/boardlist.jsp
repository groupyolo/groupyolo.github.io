<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<script>
		document.title="자유게시판"	
	</script>
	<div id="fboardwrapper">
	<h2>자유게시판</h2>
	<table id="tblfreeboard">
		<tr>
			<th>번호</th><th>제목</th><th>글쓴이</th><th>날짜</th><th>조회수</th>
		</tr>
		<c:forEach items="${fblist}" var="list">
		<tr>
			<td>${list.fbSeq}</td><td><a href="${pageContext.request.contextPath}/community/freeboard/boardview.action?fbSeq=${list.fbSeq }"><span style="font-weight:bold; padding-right:5px;">[${list.fbCategory}]</span>${list.fbName}</a></td><td>${list.mNickName }</td>
			
			<td title="${list.fbTime.substring(0,19)}">
			<c:if test="${list.gap eq 0 }">
			${list.fbTime.substring(10,19) }
			</c:if>
			<c:if test="${list.gap ge 1 }">
			${list.fbTime.substring(0,10) }
			</c:if>			
			</td>
			
			
			
			<td>${list.fbVCount }</td>
		</tr>		
		</c:forEach>	
	</table>
	<div id ="fbtns">
		<input type="button" value="글쓰기" onclick="location.href='${pageContext.request.contextPath}/community/freeboard/boardadd.action';" />	
	</div>
	
	</div>