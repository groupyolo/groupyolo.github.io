<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<script>
		<c:if test="${result==1 }">
			location.href="${pageContext.request.contextPath }/main/login.action";
		</c:if>	
		<c:if test="${result==0 }">
				//history.back();
				
				aaaaa
		</c:if>	
	</script>
	
