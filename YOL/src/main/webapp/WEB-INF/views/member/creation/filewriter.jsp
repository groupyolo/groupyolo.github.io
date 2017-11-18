<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<c:if test="${result==1}">
		되나본데
	</c:if>
	<c:if test="${result==0}">
		안되나본데
	</c:if>

</html>