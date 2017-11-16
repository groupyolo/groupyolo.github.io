<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <script>
		<c:if test="${result==1 }">
			location.href="${pageContext.request.contextPath }/member/myinfo.action";
		</c:if>	
		<c:if test="${result==0 }">
				이상해 
				
		</c:if>	
</script>
	 
