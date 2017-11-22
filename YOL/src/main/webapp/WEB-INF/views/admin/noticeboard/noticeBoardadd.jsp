<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	#noticeBoardadd { margin-bottom:30px; }
</style>
	<h1 align="center">공지사항 글쓰기</h1>
	
	<div id="noticeBoardadd" align="center">
		<form action="${pageContext.request.contextPath}/admin/noticeBoardaddOk.action" method="post">
			<div id="formTbl">
				<table>
					<tr>
						<th>카테고리</th>
						<td>
							<select name="noticecategory" style="width:500px;" class="form-control"; requried>
								<option value="1">공지</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" style="width:500px;" class="form-control"; requried/></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="ncontent" style="height:300px; width:500px; resize:none;" class="form-control"; requried></textarea></td>
					</tr>
					<tr>
						<th>노출시간</th>
						<td><input type="date" name="startExp" style="width:500px; text-align:center;" class="form-control"; requried></td>
					</tr>
					<tr>
						<th>노출끝시간</th>
						<td><input type="date" name="endExp" style="width:500px; text-align:center;" class="form-control"; requried></td>
					</tr>
				</table>
			</div>
			<hr style="width:700px;">
			<input type="button" value="취소하기" class="btn" onclick="history.back();"/>
			<input type="submit" value="등록하기" class="btn" />
			</form>
	
	</div>
















