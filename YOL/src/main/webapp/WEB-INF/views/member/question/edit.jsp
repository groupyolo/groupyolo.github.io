<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<style>
	
	#editQuestion {
		width: 500px;
		border: 1px solid black;
	}
	
	#btns { 
		width:500px;
		text-align:right; 
		margin-top: 10px; 
	}
	
</style>
<script>

$(document).ready(function() {
	
	$("#sel").val("${dto.qcategoryseq}").prop("selected", true);

});

</script>
	
	<!-- edit 주업무 -->
	
	<form method="post" action="${pageContext.request.contextPath}/question/editok.action">
		<table id="editQuestion">
			<tr>
				<th>카테고리</th>
				<td>
				<select id="sel">
					<option value="0">선택하세요.</option>
					<c:forEach items="${list}" var="category">
						<option value="${category.qcategoryseq}">
						${category.qcategory}
						</option>
					</c:forEach>
				</select>
			</tr>
			<tr>
				<th>제목 :</th> 
				<td><input type="text" id="qtitle" name="qtitle" value="${dto.qtitle}"></td>
			</tr>		
			<tr>
				<th>내용 :</th> 
				<td><textarea id="content" name="qcontent" rows="10" cols="50">${dto.qcontent}</textarea></td>
			</tr>	
		</table>
		
			<input type="hidden" name="questionseq" value="${dto.questionseq}">
			<input type="hidden" name="mseq" value="${dto.mseq}">
			
		<div id="btns">
			<input type="button"  value="돌아가기" onclick="location.href='${pageContext.request.contextPath}/question/list.action'">
			<input type="submit" value="수정하기">
		</div>
	</form>
