<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/jointeam.css">
	<div class="core_top">
		<h2 class="boxBasic">팀원 모집 글 수정하기</h2>
	</div>
	<div id="newRecruit">
		<form action="${pageContext.request.contextPath}/member/joinTeamEditOk.action" method="post">
			<div id="formTbl" class="boxBasic">
				<table class="table">
					<tr>
						<th>제목</th>
						<td colspan="2"><input type="text" name="jSubject" value="${tdto.jSubject}" class="form-control" required/></td>
					</tr>
					<tr>
						<th>기간</th>
						<td>시작일 : <input type="date" name="jStart" class="form-control" value="${tdto.jStart}" required/></td>
						<td>종료일 : <input type="date" name="jEnd" class="form-control" value="${tdto.jEnd}" required/></td>
					</tr>
					<tr>
						<th>인원수</th>
						<td colspan="2">
							<select name="jCount" id="jCount" class="form-control" required>
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
						<td colspan="2"><textarea name="jContent" class="form-control" required>${tdto.jContent}</textarea></td>
					</tr>
				</table>
				<input type="hidden" name="reSeq" value="${tdto.reSeq}" />
				<!-- 로그인한사람 --><%-- <input type="hidden" name="mSeq" value="${mSeq}"/> --%>
			</div>
			<div id="btns_list" class="boxBasic">
				<input type="button" value="돌아가기" class="btn" onclick="history.back();"/>
				<input type="submit" value="등록하기" class="btn" />
			</div>
		</form>		
	</div>
