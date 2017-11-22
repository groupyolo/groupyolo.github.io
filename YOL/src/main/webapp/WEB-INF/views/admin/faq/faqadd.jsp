<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	#faqadd { margin-bottom:30px; }
</style>
	<h1 align="center">FAQ 글쓰기</h1>
	
	<div id="faqadd" align="center">
		<form action="${pageContext.request.contextPath}/admin/faqaddOk.action" method="post">
			<div id="formTbl">
				<table>
					<tr>
						<th>카테고리</th>
						<td>
							<select name="FAQCategoryseq" style="width:500px;" class="form-control" requried>
								<option value="1">시작하기</option>
								<option value="2">편집모드</option>
								<option value="3">저장/게시</option>
								<option value="4">도메인</option>
								<option value="5">내정보관리</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" style="width:500px;" class="form-control"  requried/></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="fcontent" style="height:300px; width:500px; resize:none;" class="form-control"  requried></textarea></td>
					</tr>
					<tr>
						<th>공개여부</th>
						<td>
						<select name="openseq" style="width:500px;" class="form-control"  requried>
								<option value="1">공개</option>
								<option value="2">비공개</option>
						</select>
						</td>
					</tr>
					
				</table>
			</div>
			
			<input type="button" value="취소하기" class="btn" onclick="history.back();"/>
			<input type="submit" value="등록하기" class="btn" />
			</form>
	
	</div>