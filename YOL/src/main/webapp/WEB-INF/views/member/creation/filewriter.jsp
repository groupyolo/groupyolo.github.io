<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String whatda = request.getParameter("whatda");
String prSeq = request.getParameter("prSeq");
%>

	<c:if test="${result==1}">
		<script>
			alert("저장이 완료되었습니다.");
			history.back();
		</script>
	</c:if>
	<c:if test="${result==0}">
		<%=prSeq %>
		
		
		<script>
			/* alert("부적합한 접근입니다.");
			history.back(); */
		</script>
	</c:if>

