<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	인증되었습니다. 
	<script>
		setTimeout(function(){
			location.href="${pageContext.request.contextPath }/main/login.action";
			
		},5000);
	</script>
