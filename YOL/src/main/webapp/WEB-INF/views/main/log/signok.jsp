<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- <script>
		<c:if test="${result==1 }">
			location.href="/web/main/signAuth.action?mEmail=${loginDTO.mEmail}";
		</c:if>	
		<c:if test="${result==0 }">
				 -->
				
		<%-- </c:if>	
	</script>
	 --%>

	 <script>
	 	alert("메일 인증 후 다시 로그인 해 주십시오.");
	 	location.href="${pageContext.request.contextPath}/main/frontview.action";
	 
	 </script>