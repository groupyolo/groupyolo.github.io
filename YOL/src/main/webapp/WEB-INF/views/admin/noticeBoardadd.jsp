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
		
		
		
		
	});
</script>
</head>
<body>

	<h1>공지사항 글쓰기</h1>
	
	<div id="noticeBoardadd">
		<form action="${pageContext.request.contextPath}/admin/noticeBoardaddOk.action" method="post">
			<div id="formTbl">
				<table>
					<tr>
						<th>카테고리</th>
						<td>
							<select name="noticecategory" id="" requried>
								<option value="1">공지</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" requried/></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><input type="text" name="ncontent" style="height:400px; weight:500px;" requried></td>
					</tr>
					<tr>
						<th>노출시간</th>
						<td><input type="date" name="startExp" requried></td>
					</tr>
					<tr>
						<th>노출끝시간</th>
						<td><input type="date" name="endExp" requried></td>
					</tr>
				</table>
			</div>
			
			<input type="button" value="취소하기" onclick="history.back();"/>
			<input type="submit" value="등록하기" />
			</form>
	
	</div>
	
	

</body>
</html>

















