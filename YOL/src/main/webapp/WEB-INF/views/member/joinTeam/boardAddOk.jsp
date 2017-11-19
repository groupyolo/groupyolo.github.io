<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<script>
		console.log(${result});
	</script>
	<c:if test="${result==1}">
	<script>
		location.href="${pageContext.request.contextPath}/member/communityBoard.action";
	</script>
	</c:if>
	<c:if test="${result==0}">
	<script>
		history.back;
	</script>
	</c:if>