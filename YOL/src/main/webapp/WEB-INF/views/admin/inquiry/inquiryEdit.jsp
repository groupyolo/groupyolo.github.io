<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.container { margin-bottom:30px; }
</style>

	<h1 align="center">문의사항 수정 게시판</h1>
	
	<div class="container">
	<c:forEach items="${ivlist}" var="ivdto">
	<form action="${pageContext.request.contextPath}/admin/inquiryEditOk.action" method="post">
	<table class="table table-boader" id="inquiryEdit" style="width:600px;margin:0 auto;">
	
		<tr>
			<th>번호</th>
			<td>${ivdto.inquiryseq}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input name="title" type="text" value="${ivdto.title}" class="form-control" style="width:500px;" ></td>
		</tr>
		<tr>
			<th style="vertical-align: middle;">내용</th>
			<td><input name="icontent" type="text" value="${ivdto.icontent}" class="form-control"  style="width:500px;height:300px;"></td>
		</tr>
		
	</table>
		
		<div align="center">
			<input class="btn btn-normal" type="hidden" name="inquiryseq" value="${ivdto.inquiryseq}" >
			<input class="btn btn-normal" type="button" value="뒤로가기" onclick="history.back();">
			<input class="btn btn-normal" type="submit" id="iedit" name="iedit" value="수정완료" >
		</div>

	</form>
		</c:forEach>
	</div>













