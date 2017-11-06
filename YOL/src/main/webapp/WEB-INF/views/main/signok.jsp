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
	<script>
		<c:if test="${result==1 }">
			location.href="/web/main/signAuth.action?mEmail=${dto.mEmail}";
		</c:if>	
		<c:if test="${result==0 }">
				//history.back();
				
				aaaaa
		</c:if>	
	</script>
	

</body>
</html>