<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!-- 위에꺼 꼭 추가되어야 함!!! -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>최종 프로젝트</title>
</head>
<body>
	<h1>완전 공통적인 부분만 넣는 페이지</h1>
	<tiles:insertAttribute name="main"></tiles:insertAttribute>	
</body>
</html>