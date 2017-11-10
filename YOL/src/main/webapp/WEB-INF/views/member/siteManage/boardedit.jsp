<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
	<%@ include file="/WEB-INF/views/member/siteManage/manage.jsp" %>
		<h1>프로젝트 게시판 글 수정</h1>
		
		<form action="/web/member/editok.action" method="POST">
			<table>
				<tr>
					<td colspan="2"> 
						<select name="nsSeq" id="nsSeq">
							<option value="1" <c:if test="${pbtag == 1 }">selected</c:if>>공지</option>
							<option value="0" <c:if test="${pbtag == 0 }">selected</c:if>>일반</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="pbSubject" id="pbSubject"  value="${bdto.pbSubject }"/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="pbContent" id="pbContent">${bdto.pbContent }</textarea></td>
				</tr>
				<tr>
					<th>태그허용</th>
					<td>
						<select name="pbtag" id="pbtag">
							<option value="y" <c:if test="${pbtag == 'y' }">selected</c:if>>허용</option>
							<option value="n" <c:if test="${pbtag == 'n' }">selected</c:if>>비허용</option>
						</select>
					</td>
				</tr>
			</table>	
			<input type="submit"  value="등록하기"/>
			<input type="hidden"  name="mSeq" value= "${loginDTO.mSeq}"/>
			<input type="hidden" name="prSeq" value= "${pdto.prSeq }"/>
			<input type="hidden" name="pbSeq" value= "${bdto.pbSeq }"/>
			
		</form>
		
		<input type="button" value="돌아가기" onclick="history.back();" />
