<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
	<div id="tblboardview">
		<h2>자유게시판</h2>
		<div>
			<p><span>제목</span>${vdto.fbName }<span>${vdto.fbTime.substring(0, 19)}</span></p>
		</div>	
		<div>
			<p><span>작성자 : ${vdto.mNickName}</span><span>조회수</span>${vdto.fbVCount}<span>댓글수</span></p>
		</div>
		<div>
			<p>${vdto.fbMain}</p>
		</div>
	</div>
	<div id="fboardbtns">
		<input type="button" value="돌아가기" onclick="location.href='${pageContext.request.contextPath}/community/freeboard/boardlist.action'" />
		<c:if test="${loginDTO.mSeq==vdto.mSeq }">
		<input type="button" value="삭제하기" onclick="location.href='${pageContext.request.contextPath}/community/freeboard/boarddel.action?fbSeq=${vdto.fbSeq }'" />
		<input type="button" value="수정하기" onclick="location.href='${pageContext.request.contextPath}/community/freeboard/boardedit.action?fbSeq=${vdto.fbSeq }'" />
		</c:if>			
	</div>
	