<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div>
	<table>
		<tr>
			<th>제목</th><th>${vdto.fbName }</th><th>${vdto.fbTime}</th>
		</tr>	
		<tr>
			<th>조회수</th><td>${vdto.fbVCount}</td><td>댓글수</td>
		</tr>
		<tr>
			<td colspan="3">
				${vdto.fbMain}			
			</td>
		</tr>
	
	</table>
	<input type="button" value="돌아가기" onclick="location.href='${pageContext.request.contextPath}/community/freeboard/boardlist.action'" />	
	</div>