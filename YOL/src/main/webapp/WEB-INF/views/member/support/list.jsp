<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	
	body {

	}

	#all {
		width: 100%;
		background-color: #eee;
		margin: 0px auto;
	}

	#topBox {
		width: 100%;
		margin: 0px auto;		
		margin-left: 22%;
		padding: 40px;
	}
	
	#tblList {
		border: 1px solid gray;
		border-collapse: collapse;
		width: 1000px;
		margin: 0px auto;
		height: 200px;
	}


	#tblList th, #tblList td {
		border: 1px solid gray;
		padding: 5px;
	}
		
	
	#tblList th { 
		background-color: #eee;
		text-align:center; 
		color: gray; 
		border: 1px solid black;
	}
	
	#tblList td { text-align: center; height: 50xp; padding: 0px; margin: 0px;}
	
	#tblList tr { border-bottom: 1px solid black; display: table-row; height: 50px;}
	
	#tblList th:nth-child(1) { width: 100px; }
	#tblList th:nth-child(2) { width: 600px; }
	#tblList th:nth-child(3) { width: 200px; }
	#tblList th:nth-child(4) { width: 100px; }
	
	
	#box {
		margin: 0px auto;
		margin-top: 50px;
	}
	
	#pagebar {
		margin: 0px auto;
		text-align:center;
		padding-top: 10px;
		padding-bottom: 10px;
	}

</style>


	<div id="all">
		<div id="topBox">
			<h2>친절 1:1 고객센터</h2>
			
			<p>이용하시는데 궁금하시거나 불편한 점이 있으신가요?</p>
			<p>걱정하지마세요. 저희가 빠르고 친절하게 도와드리겠습니다.</p>
			
			<input type="button" value=" 1:1 문의 남기기" onclick="location.href='${pageContext.request.contextPath}/main/login.action'"> 
		</div>
	</div>
	
	<div id="box">
		<table id="tblList">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>등록시간</th>
					<th>조회수</th>	
				</tr>
			</thead>
			<tbody>
				 <c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.inquiryseq}</td>
						<td><a id="a1" href="${pageContext.request.contextPath}/main/login.action">${dto.title}</a></td>
						<td>${dto.enrolltime}</td>
						<td>${dto.hits}</td>
					</tr>
				</c:forEach>
				<c:if test="${list.size() == 0}">
					<tr>
						<td colspan="4"> 현재 문의글이 존재하지 않습니다. </td>
					</tr>
				</c:if>
			</tbody>
		</table>
	</div>
	
	<div id="pagebar">${pagebar}</div>

