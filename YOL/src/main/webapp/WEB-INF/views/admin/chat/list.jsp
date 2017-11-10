<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<style>

body {

}

#tblList {
	border: 1px solid gray;
	border-collapse: collapse;
	width: 800px;
	margin: 0px auto;
	margin-top: 100px;
}

#tblList th, #tblList td {
	border: 1px solid gray;
	padding: 5px;
}

#tblList td {
	text-align: center;
	text-decoration: none;
}

#tblList th:nth-child(1) {
	width: 150px;
}

#tblList th:nth-child(2) {
	color: black;
	width: 450px;
}

#tblList th:nth-child(3) {
	width: 200px;
}

#tblList th {
	background-color: #eee;
}

#tblList td:nth-child(2) a {
	text-decoration: none;
	color: black;
}

</style>

	<!-- Chat List 주업무 -->

	<table id="tblList">
		<thead>
		<tr>
			<th>닉네임</th>
			<th>내용</th>
			<th>시간</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.nickName}</td>
				<td><a
					href="${pageContext.request.contextPath}/chat/view.action?mseq=${dto.mseq}">
						${dto.ccontent} </a> </td>
				<td>${dto.cdate}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

