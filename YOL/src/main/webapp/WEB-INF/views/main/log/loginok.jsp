<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>		

	<c:if test="${loginDTO!=null}">
  	<script>
  		location.href="${pageContext.request.contextPath }/member/myinfo.action";
	</script>  
	</c:if>
	<c:if test="${loginDTO==null}">
  	<script>
  	location.href="${pageContext.request.contextPath }/main/login.action?clear=yes";
  	</script>  
	</c:if>
	