<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="/web/js/jquery-1.12.4.js"></script>
<script>
$(document).ready(function() {
	$('#btn').click(function() {
		
		var data = "pbSeq=${bdto.pbSeq}&mSeq=${loginDTO.mSeq}&pbcomment=" + $('#Pbcomment').val();
		
		$.ajax({
			type: "post",
			url : "${pageContext.request.contextPath}/member/commentadd.action",
			data : data,
			dataType: "json",
			success : function(result) {
				if (result == 1) {
					var tr = "<tr><td> ${loginDTO.mNickName} </td><td>"+ $("#Pbcomment").val() + "</td><td>"+"</td></tr>";
					$("#tblComment tbody").append(tr);
					$("#Pbcomment").val("");
				} else if (result == 0) {
					alert("추가 실패");
				}
			}
			
		});
	});
	
	$('#del').click(function() {
				var result = confirm("정말 삭제하시겠습니까?");
			if(result) {
				if(${bdto.mSeq} == ${loginDTO.mSeq}) {
					location.href='${pageContext.request.contextPath}/member/delok.action?pbSeq=${bdto.pbSeq}&prSeq=${pdto.prSeq }';
				} else {
					alert("권한이 없습니다.");
				}
			}
	});

	$('#edit').click(function(){
			if(${bdto.mSeq} == ${loginDTO.mSeq}) {
					location.href='${pageContext.request.contextPath}/member/edit.action?pbSeq=${bdto.pbSeq}&prSeq=${pdto.prSeq }';
			} else {
					alert("권한이 없습니다.");
			}
		});
});
	
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
						<c:if test="${bdto.pbtag == 'y' }"> 허용</c:if>
						<c:if test="${bdto.pbtag == 'n' }"> 비허용</c:if>
					</td>
				</tr>
			</table>	
			<input type="hidden"  name="mSeq" value= "${loginDTO.mSeq}"/>
			<input type="hidden" name="prSeq" value= "${pdto.prSeq }"/>
			
		
		<input type="button" value="글쓰기" onclick="location.href='/${pageContext.request.contextPath}/member/add.action?prSeq=${pdto.prSeq}'" />
		<input type="button" value="수정하기" id="edit"/>
		<input type="button" value="삭제하기"  id="del"/>
		
		<h3>댓글</h3>
		
			<table id="tblComment">
				<tbody>
				</tbody>
			</table>
			<form id="form1">
				<div>
					<textarea name="Pbcomment" id="Pbcomment" cols="30" rows="10"></textarea>
				</div>
				<input type="button" value="등록" id="btn"/>
			</form>

</body>
</html>