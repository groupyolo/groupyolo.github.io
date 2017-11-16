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
FAQ예수맨

	<h1>FAQ 게시판</h1>
	
		<table id="inquiry">
			<thead>
			<tr>
				<th>번호</th>
				<th>카테고리</th>
				<th>제목</th>
				<th>공개여부</th>	
			</tr>
			</thead>
			
			<tdoby>
			<c:forEach items="${faqlist}" var="faqdto">
			<tr>
				<td>${faqdto.FAQseq}</td>
				<td>${faqdto.FAQCategoryseq}</td>
				<td><a href="${pageContext.request.contextPath}/admin/faqView.action?FAQseq=${faqdto.FAQseq}">${faqdto.title}</a></td>
				<td>${faqdto.openseq}</td>
			</tr>
			</c:forEach>
			</tdoby>
		</table>
		
		<input type="button" value="글쓰기" onclick="location.href='/web/admin/faqadd.action';" align="right">
	
</body>
</html>