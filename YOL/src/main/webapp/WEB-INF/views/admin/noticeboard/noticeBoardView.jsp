<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.container { margin-bottom:30px; }
</style>

	<h1 align="center">공지사항 게시판</h1>
	
	<div class="container">
	<c:forEach items="${vlist}" var="vdto">
	<table class="table table-boader" id="noticeBoardView" align="center">
		<tr>
			<td>제목</td>
			<td>${vdto.title}</td>
		</tr>
		<tr>
			<td style="height:300px; vertical-align:middle !important;">내용</td>
			<td style="vertical-align:middle !important;">${vdto.ncontent}</td>
		</tr>
		<tr>
			<td>등록시간</td>
			<td>${vdto.enrolltime}</td>
		</tr>
		<tr>
			<td>노출시간</td>
			<td>${vdto.startExp}</td>
		</tr>
		<tr>
			<td>노출끝시간</td>
			<td>${vdto.endExp}</td>
		</tr>
		<%-- <input type="hidden" value="${vdto.noticeboardseq}"> --%>
	</table>
	<div align="center">
		<input class="btn btn-normal" type="button" value="뒤로가기" class="btn" onclick="history.back();">
		<input class="btn btn-normal" type="button" value="글삭제" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/noticeBoardDel.action?noticeboardseq=${vdto.noticeboardseq}';">
	</div>
		</c:forEach>
		</div>
