<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	.container { margin-bottom:30px; width:650px; }
	#inquiryreply th {
		width:178px;
	}
	#inquiryreplyi th {
		width:178px;
	}	
</style>

	<h1 align="center">문의 게시판</h1>
	
	<div class="container">
	<div align="center" >
	<table class="table table-boader" id="inquiryView" style="margin:0 auto;">
	<c:forEach items="${ivlist}" var="ivdto">
		<tr>
			<th>번호</th>
			<td>${ivdto.inquiryseq}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${ivdto.title}</td>
		</tr>
		<tr>
			<th style="height:300px;vertical-align: middle;">내용</th>
			<td style="vertical-align: middle;">${ivdto.icontent}</td>
		</tr>
		<tr>
			<th>등록시간</th>
			<td>${ivdto.enrolltime }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${ivdto.hits}</td>
		</tr>
		<%-- <tr>
			<td>내용</td>
			<td>${ibdto.content}</td>
			<td><a type="button" name="redel" onclick="location.href='${pageContext.request.contextPath}/admin/inquiryBoardDel.action?inquiryboardseq=${ibdto.inquiryboardseq}';">삭제</a>
		</tr> --%>
	<input type="hidden" name="inquiryseq" id="inquiryseq" value="${ivdto.inquiryseq}">
</c:forEach>		
	</table>
	<c:forEach items="${iblist}" var="ibdto">
	<input type="hidden" name="inquiryboardseq" value="${ibdto.inquiryboardseq}">
	<table class="table table-boader" id="inquiryreply" style="width:600px;">
		<tr>
			<th>댓글내용</th>
			<td>	
			${ibdto.content}
			</td>
			<td>
			<a type="button" style='cursor:pointer;' name="redel" onclick="location.href='${pageContext.request.contextPath}/admin/inquiryBoardDel.action?inquiryboardseq=${ibdto.inquiryboardseq}';">삭제</a>
			</td>
		</tr>	
	</table>
	</c:forEach>
	

	<div align="center" >
		<form action="${pageContext.request.contextPath}/admin/inquiryBoardOk.action" method="post">
		
		<table class="table table-boader" id="inquiryreplyi" style="width:600px;height:100px;">
		<tr>
			<th>내용</th>
			<td width="500px"><textarea name="content" style="width:460px;height:70px; resize:none;" requried></textarea>
			</td>
			<td><input type="hidden" name="inquiryseq" value="${inquiryseq}"/><input type="submit" value="등록" style="height:46px;"></td>
		</tr>
		</table>
		</form>
		
		<input class="btn btn-normal" type="button" value="뒤로가기" onclick="history.back();">
		<input class="btn btn-normal" type="button" value="글삭제" onclick="location.href='${pageContext.request.contextPath}/admin/inquiryDel.action?inquiryseq=${inquiryseq}';">
		<input class="btn btn-normal" type="button" id="iedit" name="iedit" value="수정하기" onclick="location.href='${pageContext.request.contextPath}/admin/inquiryEdit.action?inquiryseq=${inquiryseq}';" >
	</div>
	</div>
	</div>
