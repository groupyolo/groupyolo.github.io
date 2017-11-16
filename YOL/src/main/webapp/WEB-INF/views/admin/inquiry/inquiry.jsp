<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#inquiry {
	border: 1px solid blue;
	}
	
	#inquiry th {
	border: 1px solid blue;
	}
	
	#inquiry td {
	border: 1px solid red;
	}
</style>

<script>
	
	
	$(document).ready(function() {

 		$("a1").click( function (){
 			
 			console.log("키키키");
 			
 		});
		 
		
	});
</script>

</head>
<body>	
화이팅베이베

	<h1>문의 게시판</h1>
	
		<table id="inquiry">
			<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>등록시간</th>
				<th>조회수</th>	
			</tr>
			</thead>
			
			<tdoby>
			<c:forEach items="${ilist}" var="idto">
			<tr>
				<td>${idto.inquiryseq}</td>
				<td><a id="a1" href="${pageContext.request.contextPath}/admin/inquiryView.action?inquiryseq=${idto.inquiryseq}">${idto.title}</a></td>
				<td>${idto.enrolltime.substring(0,19)}</td>
				<td>0</td>
			</tr>
			</c:forEach>
			</tdoby>
		</table>
		
		<input type="button" value="글쓰기" onclick="location.href='/web/admin/inquiryadd.action';">
	
</body>
</html>