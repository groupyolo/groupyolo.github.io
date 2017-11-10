<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
    
		<%@ include file="/WEB-INF/views/member/siteManage/manage.jsp" %>
		

		<h1>프로젝트 게시판 </h1>

						
			<div id="search">			
			<form action="${pageContext.request.contextPath}/member/manage.action" method="get" class="form-inline">
			<select name="column" id="column"  class="form-control">
				<option value="">검색어</option>
				<option value="mNickName">작성자</option>
				<option value="pbSubject">제목</option>
				<option value="pbContent">내용</option>
			</select>
				<div class="input-group">
    				<input type="text" name="word" id="word" required class="form-control">
    				<input type="hidden" name="prSeq" value="${pdto.prSeq}" />
      				<span class="input-group-btn">
       		 			<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
      				</span>
   				</div>	
			</form>
		</div>
						
						
						<div>
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
					<td><a href="${pageContext.request.contextPath}/member/view.action?pbSeq=${bdto.pbSeq}&prSeq=${pdto.prSeq}">${bdto.pbSubject }</a></td>
					<td>${bdto.mNickName }</td>
					<td>0</td>
					<td>${bdto.pbregdate }</td>
				</tr>
			</c:forEach>
				<c:if test="${map.isSearch == 'y' && blist.size() == 0}">
								<tr>
									<td colspan="6">일치하는 결과가 없습니다.</td>
								</tr>
							</c:if>
							<c:if test="${map.isSearch == 'n' && blist.size() == 0}">
								<tr>
									<td colspan="6"> 현재 게시물이 존재하지 않습니다.</td>
								</tr>
							</c:if>
		</table>
		
		<input type="button" value="글쓰기" onclick="location.href='${pageContext.request.contextPath}/member/add.action?prSeq=${pdto.prSeq}'" />
			
				<div id="pagebar">${pagebar}</div>