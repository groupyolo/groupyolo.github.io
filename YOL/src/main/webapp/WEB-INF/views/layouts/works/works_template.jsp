<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!-- 위에꺼 꼭 추가되어야 함!!! -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath }/images/favicon.ico">
<title>YOL : As your wish</title>
</head>
<body>
<!-- assets -->
<tiles:insertAttribute name="asset"></tiles:insertAttribute>


		<tiles:insertAttribute name="membermenu"></tiles:insertAttribute>
			

		<tiles:insertAttribute name="core"></tiles:insertAttribute>
		


		<tiles:insertAttribute name="footer"></tiles:insertAttribute>

</body>
</html>