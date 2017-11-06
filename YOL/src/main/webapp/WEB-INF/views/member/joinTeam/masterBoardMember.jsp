<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
[
	<c:forEach items="${mlist}" var="mdto" varStatus="status">
	{
		"jSeq":"${mdto.jSeq}",
		"mSeq":"${mdto.mSeq}",
		"jRegDate":"${mdto.jRegDate}",
		"apSeq":"${mdto.apSeq}",
		"reSeq":"${mdto.reSeq}",
		"mNickName":"${mdto.mNickName}",
		"gradeName":"${mdto.gradeName}"
	}
	<c:if test="${status.count < mlist.size()}">
	,
	</c:if>
	</c:forEach>
]