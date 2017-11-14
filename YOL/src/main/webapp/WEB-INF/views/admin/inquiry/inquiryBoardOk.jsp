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
	<h1>댓글 글쓰기완료</h1>
	<c:if test="${result==1}">
		location.href="${pageContext.request.contextPath}/admin/inquiryBoard.action";
	</c:if>
	<c:if test="${result==0}">
		history.back;
	</c:if>
</body>
</html>