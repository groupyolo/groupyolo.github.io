<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!-- 위에꺼 꼭 추가되어야 함!!! -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버들이 보는 화면 구성</title>
<style>

</style>
</head>
<body>
		<!-- assets -->
		<tiles:insertAttribute name="asset"></tiles:insertAttribute>

		<!-- header -->
		<tiles:insertAttribute name="membermenu"></tiles:insertAttribute>
		
		<div id="core">
		<!-- 주업무 -->
		<tiles:insertAttribute name="core"></tiles:insertAttribute>
		</div>
		<!-- footer -->

		<tiles:insertAttribute name="footer"></tiles:insertAttribute>


		
		
</body>
</html>