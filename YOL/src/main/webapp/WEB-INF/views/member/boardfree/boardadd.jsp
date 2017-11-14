<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div id="fboardadd">
		<form method="POST" action="${pageContext.request.contextPath}/community/freeboard/boardaddok.action" >
			<table>
				<tr>
					<th>카테고리</th>
					<td>
						<select name="fbCatSeq" ><option value="1">잡담</option><option value="2">문화</option></select>
					</td>
					<th>제목</th>
					<td><input type="text" name="fbName" placeholder="글 제목을 입력하세요" required/></td>
				</tr>
				<tr>
					<td colspan="4"><textarea name="fbMain" style="width:100%; height:500px;"></textarea></td>
				</tr>
			</table>
			<input type="hidden" name="mSeq" value="${loginDTO.mSeq}" />
			<input type="button" value="뒤로가기" onclick="history.back();" />
			<input type="submit" value="글쓰기"/>		
		</form>
	</div>
	
	