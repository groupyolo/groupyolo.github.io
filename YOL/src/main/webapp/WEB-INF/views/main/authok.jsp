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

	인증되었습니다. 
	<script>
		setTimeout(function(){
			location.href="/web/main/login.action";
			
		},5000);
	</script>

</body>
</html>