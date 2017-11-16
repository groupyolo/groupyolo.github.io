<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<c:if test="${result==1}">
		<script>alert("작업완료");
		$(top.document.getElementById("step1")).dialog("close");
		location.href="${pageContext.request.contextPath }/member/mysites.action";
		</script>
	</c:if>
	<c:if test="${result==0}">
		<script>alert("잘못됨");</script>
	</c:if>
		