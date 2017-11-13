<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	#auth{
		font-size: 2em;
		margin:20px auto;
	}
</style>
	<div id="auth">인증되었습니다.</div> 
	<script>
		setTimeout(function(){
			location.href="${pageContext.request.contextPath }/main/login.action";
			 //window.open("about:blank","_self").close();
		},3000);
	</script>
