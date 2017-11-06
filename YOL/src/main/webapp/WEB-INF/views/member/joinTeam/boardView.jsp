<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<script>
	$(document).ready(function() {
		
		$("#btn_cancleMember").hide();
		$(".teamjj").hide();
		
		
		//모집 마감일때, 멤버 신청 불가능
		if(${tdto.activeState == 'n'}) {
			$("#btn_joinMember").attr("disabled",true);
		}
		
		//로그인한 사람이 신청한사람일 때, 멤버 취소 버튼 보여주기
		
		//로그인한 사람이 글 쓴사람이 일 때, 수정/삭제 버튼 보여주기
		
	})
</script>
</head>
<body>
	<h1>글보기</h1>
	
	<div id="viewTbl">
		<table class="tbl">
			<tr>
				<td>${tdto.mNickName}</td>
				<td>${tdto.jRegDate}</td>
			</tr>
			<tr>
				<th>${tdto.jSubject}</th>
			</tr>
			<tr>
				<td>
					${tdto.mCount} / ${tdto.jCount}
				</td>
				<td>${tdto.jStart} ~ ${tdto.jEnd}</td>
			</tr>
			<tr>
				<td>${tdto.jContent}</td>
			</tr>
		</table>
	</div>
	<div id="applyTbl">
		<table>
			<tr>
				<td>멤버 신청자</td>
			</tr>
			<tr>
				<th>닉네임</th>
				<th>신청시간</th>
				<th>상태</th>				
			</tr>
			<c:forEach items="${mlist}" var="mdto">
			<tr>
				<td>${mdto.mNickName}</td>
				<td>${mdto.jRegDate}</td>
				<td>${mdto.gradeName}</td>
			</tr>
			</c:forEach>
		</table>
	<!-- ajax로 -->		
		<form action="${pageContext.request.contextPath}/member/joinMemberAddOk.action" method="get">
			 <input type="submit"  value="멤버신청" id="btn_joinMember"/>
		</form>
		
		<!-- 조건; 신청이 완료된 멤버 && 미승인시 && 모집글 마감 전 -->
		
		<form action="${pageContext.request.contextPath}/member/joinMemberCancleOk.action" method="get">
			 <input type="submit"  value="멤버취소" id="btn_cancleMember"/>
		</form>
		
	<!-- 여기까지 ajax -->
	</div>
	<div id="btns_view">
		<input type="button" value="BACK" onclick="history.back();"/>
		<input type="button" value="WRITE" onclick="location.href='${pageContext.request.contextPath}/member/joinTeamAdd.action';"/>
		<!-- 로그인 확인 후 아이디 맞으면 보여줌  -->
		<input type="button" value="EDIT" class="teamjj" onclick="location.href='${pageContext.request.contextPath}/member/joinTeamEdit.action?reSeq=${tdto.reSeq}';"/>
		<input type="button" value="DELETE" class="teamjj" onclick="location.href='${pageContext.request.contextPath}/member/joinTeamDel.action?reSeq=${tdto.reSeq}';"/>
	</div>
</body>
</html>