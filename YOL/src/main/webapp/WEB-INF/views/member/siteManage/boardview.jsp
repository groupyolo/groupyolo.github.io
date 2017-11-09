<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="/web/js/jquery-1.12.4.js"></script>
<script>

	function del() {
				var result = confirm("정말 삭제하시겠습니까?");
			if(result) {
				if(${bdto.mSeq} == <%= session.getAttribute("mSeq")%>) {
					location.href='/web/member/delok.action?pbSeq="${bdto.pbSeq}"prSeq="${pdto.prSeq }"';
				} else {
					alert("권한이 없습니다.");
			}
		}
	}

	function edit() {
		
				if(${bdto.mSeq} == <%= session.getAttribute("mSeq")%>) {
					location.href='/web/member/edit.action?pbSeq="${bdto.pbSeq}"prSeq="${pdto.prSeq }"';
				} else {
					alert("권한이 없습니다.");
			}
		
	}
</script>

<%@ include file="/WEB-INF/views/member/siteManage/manage.jsp" %>
		<h1>프로젝트 게시판 글 보기</h1>
		
			<table>
				<tr>
					<th>번호</th>
					<td>${bdto.pbSeq }</td>
				</tr>
				<tr>
					<th>카테고리</th>
					<td> 
						<c:if test="${bdto.nsSeq == 1 }"> 공지</c:if>
						<c:if test="${bdto.nsSeq == 2 }"> 일반</c:if>
					</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${bdto.mNickName }</td>
				</tr>
				<tr>
					<th>작성 날짜</th>
					<td>${bdto.pbregdate }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${bdto.pbSubject }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${bdto.pbContent }</td>
				</tr>
				<tr>
					<th>태그허용</th>
					<td>
						<c:if test="${bdto.pbtag == y }"> 허용</c:if>
						<c:if test="${bdto.pbtag == n }"> 비허용</c:if>
					</td>
				</tr>
			</table>	
			<input type="hidden"  name="mSeq" value= "<%= session.getAttribute("mSeq") %>"/>
			<input type="hidden" name="prSeq" value= "${pdto.prSeq }"/>
			
		
		<input type="button" value="글쓰기" onclick="location.href='/web/member/add.action'" />
		<input type="button" value="수정하기"  onclick="edit();"/>
		<input type="button" value="삭제하기"  onclick="del()"/>
</body>
</html>