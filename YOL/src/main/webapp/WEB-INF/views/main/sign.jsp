<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="/js/jquery-1.12.4.js"></script>
<style>
</style>
</head>
<body>
	
	<form method="post" action="/web/main/signok.action">
	<table id="tbl">
	
	<tr>
		<th>
			메일
		</th>
		<td>
			<input type="email" id="mEmail" name="mEmail">
		</td>
		<td>
		<!-- ajax용  -->
		</td>
	</tr>
	<tr>
		<th>
			닉네임
		</th>
		<td>
			<input type="text" id="mNickName" name="mNickName">
		</td>
		<td>
		<!-- ajax용  -->
		</td>
	</tr>	
	<tr>
		<th>
			비밀번호
		</th>
		<td>
			<input type="password" id="mPassword" name="mPassword">
		</td>
		<td>
		<!-- ajax용  -->
		</td>
	</tr>	
	
	
	</table>
	<input type="submit" value="가입하기">
	<input type="button" onclick="history.back();">
	</form>
	

</body>
</html>