<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>Insert title here</title>

<script>
	
		

</script>

</head>
<body>	

	
	<div class="container">
	<h1 align="center">회원정보</h1>
		<table class="table table-boarder" id="adminMember">

		
			
			<tr>
				<th style="text-align:center;">번호</th>
				<th style="text-align:center;">닉네임</th>
				<th style="text-align:center;">이메일</th>
				<th style="text-align:center;">비밀번호</th>
				<th style="text-align:center;">가입일</th>		
			</tr>


			<c:forEach items="${mlist}" var="mdto">
			<tr>
				<td style="text-align:center;">${mdto.mSeq}</td>
				<td style="text-align:center;">${mdto.mNickName}</td>
				<td style="text-align:center;">${mdto.mEmail}</td>
				<td style="text-align:center;">${mdto.mPassword}</td>
				<td style="text-align:center;">${mdto.mDate}</td>
			</tr>
			</c:forEach>

		</table>
		
		
	</div>
	
</body>
</html>