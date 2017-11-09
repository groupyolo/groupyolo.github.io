<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
	<%@ include file="/WEB-INF/views/member/siteManage/manage.jsp" %>
		<h1>프로젝트 게시판 글 등록</h1>
		
		<form action="/web/member/addok.action" method="POST">
			<table>
				<tr>
					<td colspan="2"> 
						<select name="nsSeq" id="nsSeq">
							<option value="1">공지</option>
							<option value="2"  selected>일반</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="pbSubject" id="pbSubject" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="pbContent" id="pbContent" cols="30" rows="10"></textarea></td>
				</tr>
				<tr>
					<th>태그허용</th>
					<td>
						<select name="pbtag" id="pbtag">
							<option value="y">허용</option>
							<option value="n">비허용</option>
						</select>
					</td>
				</tr>
			</table>	
			<input type="submit"  value="등록하기"/>
			<input type="hidden"  name="mSeq" value= "<%= session.getAttribute("mSeq") %>"/>
			<input type="hidden" name="prSeq" value= "${pdto.prSeq }"/>
			
		</form>
		
		<input type="button" value="글쓰기" onclick="location.href='/web/member/add.action'" />
