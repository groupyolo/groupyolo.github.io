<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
	<%@ include file="/WEB-INF/views/member/siteManage/manage.jsp" %>
		
	<hr />
		<blockquote>
		<h1>프로젝트 게시판 </h1>
		</blockquote>
		
		<form action="/web/member/pbaddok.action" method="POST">
			<table id="tbl2" class="table table-striped">
				<tr>
					<th>카테고리</th>
					<td> 
						<select name="nsSeq" id="nsSeq"  class="form-control short"> 
							<option value="1">공지</option>
							<option value="0"  selected>일반</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="pbSubject" id="pbSubject"   class="form-control long"/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="pbContent" id="pbContent"  class="form-control long"></textarea></td>
				</tr>
				<tr>
					<th>태그허용</th>
					<td>
						<select name="pbtag" id="pbtag"  class="form-control short">
							<option value="y">허용</option>
							<option value="n">비허용</option>
						</select>
					</td>
				</tr>
			</table>	
			<input type="hidden"  name="mSeq" value= "${loginDTO.mSeq}"/>
			<input type="hidden" name="prSeq" value= "${pdto.prSeq }"/>
		<div id="btns1">
			<input type="button" value="돌아가기" onclick="history.back();" class="btn btn-default"  />
			<input type="submit"  value="등록하기" class="btn btn-primary" />
		</div>
			
		</form>
