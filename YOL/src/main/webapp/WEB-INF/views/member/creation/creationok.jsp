<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title></title>
<style>
</style>
</head>
<body>
 
	<c:if test="${result==1}">
		<script>alert("작업완료");
		$(top.document.getElementById("step1")).dialog("close");
		</script>
	</c:if>
	<c:if test="${result==0}">
		<script>alert("잘못됨");</script>
	</c:if>
		

</body>
</html>