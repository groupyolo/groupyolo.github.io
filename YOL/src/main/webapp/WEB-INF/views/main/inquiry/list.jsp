<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<style>
	
	body {

	}

	#all {
		background-color: #eee;
	}

	#topBox {		
		padding: 40px;
	}
	
	#tblList {
		width: 800px;
		margin: 0px auto;
		margin-top: 50px;
	}
	
	
	#tblList th { background-color: #eee; height: 30px; text-align:center; color: gray; border: 1px solid white; }
	#tblList td { text-align: center; }
	
	#tblList tr { border-bottom: 1px solid black; }
	
	#tblList th:nth-child(1) { width: 50px; }
	#tblList th:nth-child(2) { width: 100px; }
	#tblList th:nth-child(3) { width: 450px; }
	#tblList th:nth-child(4) { width: 200px; }
	
</style>


	<div id="all">
		<div id="topBox">
			<h2>친절 1:1 고객센터</h2>
			
			<p>이용하시는데 궁금하시거나 불편한 점이 있으신가요?</p>
			<p>걱정하지마세요. 저희가 빠르고 친절하게 도와드리겠습니다.</p>
			
			<input type="button" value=" 1:1 문의 남기기"> 
			<input type="button" value=" 내 질문 보기">
		</div>
	</div>
	
	
	<table id="tblList">
		<thead>
			<tr>
				<th>번호</th>
				<th>상태</th>
				<th>제목</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>{ 답변완료 }</td>
				<td> 테스트입니다.</td>
				<td>2017.11.10</td>
			</tr>
			 <c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.inquiryseq}</td>
					<td>${dto.inquiryseq}</td>
					<td>${dto.title}</td>
					<td>${dto.enrolltime}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	

