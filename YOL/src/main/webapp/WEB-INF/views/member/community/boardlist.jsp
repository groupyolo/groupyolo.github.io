<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div id="boardqna">
<h4>질문게시판</h4>

	

</div>


<div id="boardrecruit">
<h4>모집게시판</h4>

	

</div>

<div id="boardfree">
<h4><a href="${pageContext.request.contextPath}/community/freeboard/boardlist.action">자유게시판</a></h4>

	<table id="tblfreeboard">
		<tr>
			<th>번호</th><th>제목</th><th>글쓴이</th><th>날짜</th><th>조회수</th>
		</tr>
		<c:forEach items="${fblistshort}" var="list" varStatus="status" >
			
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
</div>

<hr />