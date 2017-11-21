<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>Insert title here</title>
<style>

</style>


</head>
<body>	

	<h1 align="center">FAQ 게시판</h1>
	
	<div class="container">
		<table class="table table-board" id="inquiry">	
			<colgroup>
				<col width="7%">	<!-- 글 번호 -->
				<col width="*">	<!-- 제목 -->
				<col width="10%">		<!-- 카테고리   -->
				<col width="10%">	<!-- 공개여부 -->
			</colgroup>
			
			<tr>
				<th style="text-align:center;">번호</th>
				<th style="text-align:center;">제목</th>
				<th style="text-align:center;">카테고리</th>
				<th style="text-align:center;">공개여부</th>	
			</tr>

			

			<c:forEach items="${faqlist}" var="faqdto">
			<tr>
				<td style="text-align:center;">${faqdto.FAQseq}</td>
				<td style="text-align:center;"><a href="${pageContext.request.contextPath}/admin/faqView.action?FAQseq=${faqdto.FAQseq}">${faqdto.title}</a></td>
				<td style="text-align:center;" id="faqCategory">
					<c:if test="${faqdto.FAQCategoryseq == 1}">
					시작하기
					</c:if>	
					<c:if test="${faqdto.FAQCategoryseq == 2}">
					편집모드
					</c:if>
					<c:if test="${faqdto.FAQCategoryseq == 3}">
					저장/게시
					</c:if>
					<c:if test="${faqdto.FAQCategoryseq == 4}">
					도메인
					</c:if>
					<c:if test="${faqdto.FAQCategoryseq == 5}">
					내정보관리
					</c:if>
				</td>
				<td style="text-align:center;">${faqdto.openseq}</td>
			</tr>
			</c:forEach>
		</table>
		
		<input class="btn btn-normal pull-right" type="button" value="글쓰기" onclick="location.href='/web/admin/faqadd.action';" align="right">

	</div>

	
</body>
</html>