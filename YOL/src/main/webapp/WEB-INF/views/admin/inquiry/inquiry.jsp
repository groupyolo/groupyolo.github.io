<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.container { margin-bottom:30px; }
</style>
	<div class="container">
	<h1 align="center">문의 게시판</h1>
		<table class="table table-boarder" id="inquiry">

			<colgroup>
				<col width="7%">	<!-- 글 번호 -->
				<col width="40%">		<!--  제목   -->
				<col width="15%">	<!-- 등록시간 -->
				<col width="7%">	<!-- 조회수 -->
			</colgroup>
			
			<tr>
				<th style="text-align:center;">번호</th>
				<th style="text-align:center;">제목</th>
				<th style="text-align:center;">등록시간</th>
				<th style="text-align:center;">조회수</th>	
			</tr>


			<c:forEach items="${ilist}" var="idto">
			<tr>
				<td style="text-align:center;">${idto.inquiryseq}</td>
				<td style="text-align:center;"><a id="a1" href="${pageContext.request.contextPath}/admin/inquiryView.action?inquiryseq=${idto.inquiryseq}">${idto.title}</a></td>
				<td style="text-align:center;">${idto.enrolltime.substring(0,19)}</td>
				<td style="text-align:center;">${idto.hits}</td>
			</tr>
			</c:forEach>

		</table>
		
		<input class="btn btn-normal pull-right" class="btn" type="button" value="글쓰기" onclick="location.href='/web/admin/inquiryadd.action';">
	</div>