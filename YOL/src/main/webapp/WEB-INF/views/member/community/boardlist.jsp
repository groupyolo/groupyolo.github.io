<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>

	#questionList {
		width: 430px;
	}

	#questionList tr {
		width: 100%;
		border-bottom: 1px solid black;
		padding-bottom: 5px;
	}
	
	#questionList td:nth-child(1) {
		display: inline-block;
		width: 70px;
		font-weight: bold;
	}
	
	#questionList td:nth-child(2) {
		width: 350px;
		display: inline-block;
	}
	
	#questionList td:nth-child(3) {
		float: right;
		display: inline-block;
		margin-right: 30px;
	}
	
	#questionList td:nth-child(4) {
		float: right;
		display: inline;
		margin-right: 30px;
	}
	

	#topBox {		
		background-color: cornflowerblue;
		color: white;
		padding: 5px;
	}
	
	#topBox a {
		color: white;
		font-weight: bold;
	}

</style>

<div id="boardqna">
		<div id="topBox">
			<h4><a href="${pageContext.request.contextPath}/question/list.action">질문게시판</a></h4>
		</div>

		<table id="questionList">
				<tbody>
				<c:forEach items="${qlist}" var="dto" varStatus="status" >
					<tr>
						<td>[${dto.qcategory}]</td>
						<td>
						<a href="${pageContext.request.contextPath}/question/view.action?questionseq=${dto.questionseq}">
								${dto.qtitle} ( ${dto.qcommentcount } )</a>
						</td>
						<td>${dto.qtime}</td>
						<td>${dto.mnickname}</td>
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
	<div id="topBox">
			<h4><a href="${pageContext.request.contextPath}/member/communityBoard.action">모집게시판</a></h4>
		</div>

		<table id="questionList">
				<tbody>
				<c:forEach items="${slist}" var="sdto" varStatus="status" >
					<tr>
						<td>[${sdto.sName}]</td>
						<td>
							<a href="${pageContext.request.contextPath}/member/joinTeamView.action?reSeq=${sdto.reSeq}">${sdto.jSubject}</a>
						</td>
						<td>${sdto.jRegDate}</td>
						<td>${sdto.mNickName}</td>
					</tr>
				</c:forEach>
					<c:if test="${slist.size() == 0}">
						<tr>
							<td colspan="6"> 현재 게시물이 존재하지 않습니다 </td>
						</tr>
					</c:if>
				</tbody>
			</table>

	

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