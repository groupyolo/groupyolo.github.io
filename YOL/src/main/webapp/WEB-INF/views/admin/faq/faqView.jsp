<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.container { margin-bottom:30px; }
</style>
	<h1 align="center">FAQ 게시판</h1>
	
	<div class="container">
	<c:forEach items="${fvlist}" var="fvdto">
	<table class="table table-boader" id="faqView" style="width:650px;margin:0 auto;">
		<tr>
			<th>번호</th>
			<td>${fvdto.FAQseq}</td>
		</tr>
		<tr>
			<th>카테고리</th>
			<td>${fvdto.FAQCategoryseq}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${fvdto.title}</td>
		</tr>
		<tr>
			<th style="height:200px;vertical-align:middle;">내용</th>
			<td style="vertical-align:middle;">${fvdto.fcontent}</td>
		</tr>
		<tr>
			<th>등록시간</th>
			<td>${fvdto.enrolltime}</td>
		</tr>
		<tr>
			<th>공개여부</th>
			<td>${fvdto.openseq}</td>
		</tr>
	</table>
	<div align="center">
		<input class="btn btn-normal" type="button" value="뒤로가기" class="btn" onclick="history.back();">
		<input class="btn btn-normal" type="button" value="글삭제" class="btn"  onclick="location.href='${pageContext.request.contextPath}/admin/faqDel.action?FAQseq=${fvdto.FAQseq}';">
	</div>
		</c:forEach>
		</div>
