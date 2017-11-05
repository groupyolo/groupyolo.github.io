<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<!-- <link rel="stylesheet" href="/nontiles/resources/css/bootstrap.css"/> -->

<style>
</style>

<!-- include와 동일한 상황 tiles-setting.xml에 정의되어 있음 -->
<%-- <%@ include file="/WEB-INF/views/inc/asset.jsp" %> --%>
<tiles:insertAttribute name="asset"></tiles:insertAttribute>


</head>
<body>

	<div id="main">
		<tiles:insertAttribute name="membermenu"></tiles:insertAttribute>
		<tiles:insertAttribute name="membersubmenu"></tiles:insertAttribute>
		
		<!-- 주업무 조각 페이지 -->
		<tiles:insertAttribute name="core"></tiles:insertAttribute>
		
	</div>

</body>

</html>