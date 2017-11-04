<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>팀원구하기용</h1>
	
	<div id="searchBox">
		<form action="" method="get">
			<select name="" id="">
				<option value=""></option>
				<option value=""></option>
			</select>
			<input type="text" />
			<input type="submit" value="검색" />
		</form>
	</div>
	<table class="tbl">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>기간</th>
			<th>인원수</th>
			<th>글쓴이</th>
			<th>조회수</th>
			<th>날짜</th>
		</tr>
		<tr>
			<td>1</td>
			<td>팀원을 구합니다.</td>
			<td>04/01~04/10</td>
			<td>0/4</td>
			<td>희쥬니</td>
			<td>8</td>
			<td>2017/03/31</td>
		</tr>
	</table>
	<div id="bottomPaging"></div>
	<input type="button" value="글쓰기" onclick="location.href='${pageContext.request.contextPath}/member/joinTeamAdd.action';"/>
	
</body>
</html>