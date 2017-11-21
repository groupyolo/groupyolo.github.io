<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


	
	<div class="container">
	<h1 align="center">공지사항 게시판</h1>
		<table class="table table-boader" >
			<thead>
				<colgroup>
				<col width="7%">	<!-- 글 번호 -->
				<col width="*">		<!--  제목   -->
				<col width="15%">	<!-- 등록시간 -->
				</colgroup>
			<tr>
				<th style="text-align:center;">번호</th>
				<th style="text-align:center;">제목</th>
				<th style="text-align:center;">등록시간</th>	
			</tr>
			</thead>
			
			<tdoby>

			<c:forEach items="${list}" var="dto">
			<tr>
				<td style="text-align:center;">${dto.noticeboardseq}</td>
				<td style="text-align:center;"><a href="${pageContext.request.contextPath}/admin/noticeBoardView.action?noticeboardseq=${dto.noticeboardseq}">${dto.title}</a></td>
				<td style="text-align:center;">${dto.enrolltime.substring(0,10)}</td>
			</tr>
			</c:forEach>
			</tdoby>
		</table>
				<input class="btn btn-normal pull-right" type="button" value="글쓰기" onclick="location.href='/web/admin/noticeBoardadd.action';">
	</div>
		
	
