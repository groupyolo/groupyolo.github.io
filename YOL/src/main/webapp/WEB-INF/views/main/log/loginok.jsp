<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

${loginDTO.mSeq }
${loginDTO.mNickName }
${loginDTO.mEmail }

	<script>
		location.href="${pageContext.request.contextPath}/question/list.action"
	</script>
