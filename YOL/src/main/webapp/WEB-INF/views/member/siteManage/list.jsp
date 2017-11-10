<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
    
		<%@ include file="/WEB-INF/views/member/siteManage/manage.jsp" %>
		
		<h1>프로젝트 게시판 </h1>
	
					<div id="search">
						<form action="/Sunn/sales/sboardlist.do" method="get" class="form-inline">
							<select name="column" id="column" class="form-control">
								<option value="">검색어</option>
								<option value="categoryseq">카테고리</option>
								<option value="name">작성자</option>
								<option value="position">직급</option>
								<option value="content">내용</option>
								<option value="subject">제목</option>
							</select>
							<div class="input-group">
    							<input type="text" name="word" id="word" required class="form-control">
      						  	<span class="input-group-btn">
       		 						<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
      							</span>
   							</div>							
						</form>
						
						<c:if test= "${map.isSearch == 'y' }">
							<script>
								$("#column").val("${map.column}");
								$("#word").val("${map.word}");
							</script>
						</c:if>
					</div>
	
	
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
			