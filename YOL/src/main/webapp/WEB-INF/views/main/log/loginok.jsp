<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


${loginDTO.mSeq }
${loginDTO.mEmail }

	<a href="/web/member/test.action">사이트 목록보기</a>
	<script>
		location.href="${pageContext.request.contextPath }/member/myinfo.action";
	</script>