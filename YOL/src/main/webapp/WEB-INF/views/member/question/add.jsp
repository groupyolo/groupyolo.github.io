<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<style>
	
	#box {
		margin: 0px auto;
		margin-top: 50px;
	}
	
	#addQuestion {
		width: 1000px;
		padding: 10px;
		border: 1px solid black;
	}
	
	#addQuestion th {
		padding: 10px;
		width: 100px;
		text-align: center;
	}
	
	#qtitle {
		width: 800px;
	}
	
	#qcontent {
		width: 800px;
	}
	
	#btns { 
		width:1000px;
		text-align:right; 
		margin-top: 10px; 
		padding-right: 30px;
	}
	
	#all {
		background-color: cornflowerblue;
		color: white;
	}

	blockquote footer {
		color: white;
	}
	#topBox {		
		padding: 40px;
	}
</style>

	<!-- add 주업무 -->
	
	<div id="all">
		<div id="topBox">
			<blockquote>
			<h2>질문 게시판</h2>
			<footer>서로 소통하고 질문하는 커뮤니티 공간입니다.</footer>
			
			</blockquote>
		</div>
	</div>
	
	<div id="box">
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
					<td><input type="text" id="qtitle" name="qtitle" ></td>
				</tr>		
				<tr>
					<th>내용 :</th> 
					<td><textarea id="qcontent" name="qcontent" rows="10" cols="50"></textarea></td>
				</tr>	
			</table>
			<div id="btns">
				<input type="button" value="돌아가기" onclick="location.href='${pageContext.request.contextPath}/question/list.action'">
				<input type="submit" value="작성하기">
			</div>
		</form>
	</div>

