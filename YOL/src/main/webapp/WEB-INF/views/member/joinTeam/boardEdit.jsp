<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
</head>
<body>
	<h1>글 수정하기</h1>
	<div id="newRecruit">
		<form action="${pageContext.request.contextPath}/member/joinTeamEditOk.action" method="post">
			<div id="formTbl">
				<table>
					<tr>
						<th>제목</th>
						<td><input type="text" name="jSubject" value="${tdto.jSubject}" requried/></td>
					</tr>
					<tr>
						<th>기간</th>
						<td>시작일 : <input type="date" name="jStart" value="${tdto.jStart}" requried/></td>
						<td>종료일 : <input type="date" name="jEnd" value="${tdto.jEnd}" requried/></td>
					</tr>
					<tr>
						<th>인원수</th>
						<td>
							<select name="jCount" id="jCount" requried>
								<option value="1">1명</option>
								<option value="2">2명</option>
								<option value="3">3명</option>
								<option value="4">4명</option>
							</select>
							<script>$("#jCount").val("${tdto.jCount}");</script>
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="jContent" id="" requried>${tdto.jContent}</textarea></td>
					</tr>
				</table>
				<input type="hidden" name="reSeq" value="${tdto.reSeq}" />
				<!-- 로그인한사람 --><%-- <input type="hidden" name="mSeq" value="${mSeq}"/> --%>
			</div>
			<div class="btns_add">
				<input type="button" value="돌아가기" onclick="history.back();"/>
				<input type="submit" value="등록하기" />
			</div>
		</form>		
	</div>
	
</body>
</html>