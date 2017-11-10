<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!-- 위에꺼 꼭 추가되어야 함!!! -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버들이 보는 화면 구성</title>
</head>
<body>
<!-- assets -->
<tiles:insertAttribute name="asset"></tiles:insertAttribute>

		<!-- header -->
		<tiles:insertAttribute name="membermenu"></tiles:insertAttribute>
			
		<!-- 주업무 -->
		<tiles:insertAttribute name="core"></tiles:insertAttribute>
		
		<!-- footer -->

		<tiles:insertAttribute name="footer"></tiles:insertAttribute>


</body>
</html>