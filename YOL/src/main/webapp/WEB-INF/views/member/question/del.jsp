<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  <!-- del 주업무 -->
  
	<script>
	
	<c:if test="${result == 1}">
		location.href="${pageContext.request.contextPath}/question/list.action";
	</c:if>
	<c:if test="${result == 0}">
		history.back();
	</c:if>
	
	</script>

</body>
</html>
