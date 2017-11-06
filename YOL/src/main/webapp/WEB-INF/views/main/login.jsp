<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<style>
</style>
</head>
<body>
	
	<form method="post" action="/web/main/loginok.action">
	
	<span>이메일: </span> <input type="email"	name="mEmail" id="mEmail" required>
	<span>비번: </span> <input type="password" name="mPassword" id="mPassword" required>
	
	<input type="submit" value="로그인">
	</form>
	

</body>
</html>