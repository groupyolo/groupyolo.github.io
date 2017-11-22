<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>

body {

}

#cbox {
	padding-top: 50px;
	height: 450px;
}

#tblList {
	border: 1px solid gray;
	border-collapse: collapse;
	width: 800px;
	margin: 0px auto;
}
#tblList th {
	text-align: center;
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

		<div id="cbox">
			<hr style="margin: 10px 0px;">
			<h3 style="font-variant: small-caps; text-align:center;">Not Receive Reply (X)</h3>
			<hr style="margin: 10px 0px;">
	
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
					<tr id="${dto.cseq}">
						<td>${dto.mnickname}</td>
						<td><a
							href="${pageContext.request.contextPath}/chat/view.action?mseq=${dto.mseq}">
								${dto.ccontent} </a> </td>
						<td>${dto.cdate}</td>
					</tr>
				</c:forEach>
				<c:if test="${list.size() == 0}">
				<tr>
					<td colspan="3">문의 온 채팅이 없습니다.</td>
				</tr>
				</c:if>
				</tbody>
			</table>
		</div>
	