<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>

	#questionList {
		width: 430px;
		padding: 10px;
	}
	
	#questionList tr:nth-child(1) {
		dlsplay:inline;
	}
	#questionList tr:nth-child(2) {
		float: left;
	}

</style>

<div id="boardqna">
<h4><a href="${pageContext.request.contextPath}/question/list.action">질문게시판</a></h4>

	<table id="questionList">
			<tbody>
			<c:forEach items="${qlist}" var="dto" varStatus="status" >
				<tr>
					<td>
					<a href="${pageContext.request.contextPath}/question/view.action?questionseq=${dto.questionseq}">
							${dto.qtitle} </a></td>
					<td>${dto.qcategory}</td>
					<td>${dto.mnickname}</td>
					<td>${dto.qtime}</td>
				</tr>
			</c:forEach>
				<c:if test="${qlist.size() == 0}">
					<tr>
						<td colspan="6"> 현재 게시물이 존재하지 않습니다 </td>
					</tr>
				</c:if>
			</tbody>
		</table>
	

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