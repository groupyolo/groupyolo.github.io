<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/jointeam.css">
	<div class="core_top">
		<h2 class="boxBasic">멤버 모집</h2>
	</div>
	<div id="searchBox" class="boxBasic">
		<form action="" method="get" class="form-inline">
			<select name="column" id="search_column" class="form-control">
				<option value="jSubject" class="form-control">제목</option>
				<option value="mNickName" class="form-control">글쓴이</option>
			</select>
			<input name="word" id="search_word" type="text" class="form-control"/>
			<input type="submit" value="검색" class="btn"/>
		</form>
	</div>
	<div id="listTbl" class="boxBasic">
		<table class="table">
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
				<c:if test="${map.isSearch == 'y' && list.size() == 0}">
					<tr>
						<td colspan="6">일치하는 결과가 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${map.isSearch == 'n' && list.size() == 0}">
					<tr>
						<td colspan="6">현재 게시물이 존재하지 않습니다.</td>
					</tr>
				</c:if>
			</tbody>
		</table>
	</div>
	<div id="btns_list" class="boxBasic">
		<c:if test="${map.isSearch == 'y'}">
			<input type="button" value="검색초기화" class="btn" onclick="location.href='${pageContext.request.contextPath}/member/communityBoard.action';" />
		</c:if>
		<input type="button" value="글쓰기" class="btn" onclick="location.href='${pageContext.request.contextPath}/member/joinTeamAdd.action';"/>
	</div>
	<div id="pagebar">${pagebar}</div>
