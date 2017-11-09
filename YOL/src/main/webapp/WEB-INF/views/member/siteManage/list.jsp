<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
    
		<%@ include file="/WEB-INF/views/member/siteManage/manage.jsp" %>
		
		<h1>프로젝트 게시판 </h1>
	
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>날짜</th>
			</tr>
			
			<c:forEach items="${blist}" var="bdto">
				<tr>
					<td>${bdto.pbSeq }</td>
					<td><a href="/web/member/view.action?pbSeq=${bdto.pbSeq}&prSeq=${pdto.prSeq}">${bdto.pbSubject }</a></td>
					<td>${bdto.mNickName }</td>
					<td>0</td>
					<td>${bdto.pbregdate }</td>
				</tr>
			</c:forEach>
		</table>
		
		<input type="button" value="글쓰기" onclick="location.href='/web/member/add.action?prSeq=${pdto.prSeq}'" />
			