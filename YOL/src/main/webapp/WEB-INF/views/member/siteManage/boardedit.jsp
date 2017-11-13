<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
	<%@ include file="/WEB-INF/views/member/siteManage/manage.jsp" %>
		<hr />
		<blockquote>
		<h1>프로젝트 게시판 </h1>
		</blockquote>
		
		<form action="/web/member/editok.action" method="POST">
			<table id="tbl2" class="table table-striped">
				<tr>
					<th>카테고리</th>
					<td> 
						<select name="nsSeq" id="nsSeq"  class="form-control">
							<option value="1" <c:if test="${pbtag == 1 }">selected</c:if>>공지</option>
							<option value="0" <c:if test="${pbtag == 0 }">selected</c:if>>일반</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="pbSubject" id="pbSubject"  value="${bdto.pbSubject }"  class="form-control"/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="pbContent" id="pbContent"  class="form-control">${bdto.pbContent }</textarea></td>
				</tr>
				<tr>
					<th>태그허용</th>
					<td>
						<select name="pbtag" id="pbtag"  class="form-control">
							<option value="y" <c:if test="${pbtag == 'y' }">selected</c:if>>허용</option>
							<option value="n" <c:if test="${pbtag == 'n' }">selected</c:if>>비허용</option>
						</select>
					</td>
				</tr>
			</table>	
			<input type="hidden"  name="mSeq" value= "${loginDTO.mSeq}"/>
			<input type="hidden" name="prSeq" value= "${pdto.prSeq }"/>
			<input type="hidden" name="pbSeq" value= "${bdto.pbSeq }"/>
			
			<div id="btns1">
				<input type="button" value="돌아가기" onclick="history.back();" class="btn btn-default"  />
				<input type="submit"  value="등록하기" class="btn btn-primary" />
			</div>
		</form>
		
