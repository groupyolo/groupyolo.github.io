<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${result==1}">
	<script>
		location.href="${pageContext.request.contextPath}/member/joinTeamView.action?reSeq=${dto.reSeq}";
	</script>
	</c:if>
	<c:if test="${result==0}">
	<script>
		history.back;
	</script>
	</c:if>
</body>
</html>