<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<style>
	
	#addQuestion {
		width: 500px;
		border: 1px solid black;
	}
	
	#btns { 
		width:500px;
		text-align:right; 
		margin-top: 10px; 
	}
</style>

	<!-- add 주업무 -->
	
	<form method="post" action="${pageContext.request.contextPath}/question/addok.action">
		<table id="addQuestion">
			<tr>
				<th>카테고리</th>
				<td>
				<select name="qcategoryseq">
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
				<td><input type="text" id="qtitle" name="qtitle"></td>
			</tr>		
			<tr>
				<th>내용 :</th> 
				<td><textarea id="qcontent" name="qcontent" rows="10" cols="50"></textarea></td>
			</tr>	
		</table>
		<div id="btns">
			<input type="submit" value="작성하기">
		</div>
	</form>

