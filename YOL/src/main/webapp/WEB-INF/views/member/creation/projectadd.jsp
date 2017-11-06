<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<style>

	#cproject{
		width:400px; height:400px;
		border: 1px solid black;
	}

	#cproject table tr{
		height:30px;
	}

	#cproject table tr th{
		text-align: left;	
		border: 1px soldi red;
	}

	#cproject table tr td span{
		color: #222;
		font-size: 10px;
	}

</style>
</head>
<body>

	<!-- 생성 버튼 눌렀을 때 modal -->
	<div id="cproject">
		<form method="POST" action="">
		<table>
			<tr>
				<th>브라우저 타이틀</th>
			</tr>
			<tr>
				<td><input type="text" placeholder="사이트명을 입력하세요 브라우저 상단에 나타납니다" /></td>
			</tr>
			<tr>
				<td><span>*최초 설정 이후에도 편집모드에서 수정하실 수 있습니다.</span></td>
			</tr>
			<tr>
				<th>사이트 URL</th>
			</tr>
			<tr>
				<td><input type="text" placeholder="원하는 주소를 입력하세요" /></td>
			</tr>
			<tr>
				<td><span>*url은 최초 설정 이후 1회 변경이 가능하니 신중하게 입력해 주세요</span></td>
			</tr>
			
		</table>
		<div id="crtbtns">
			<input type="button" value="취소" />
			<input type="submit" value="저장" />		
		</div>
		</form>
	</div>
	
	
	<div>
	
	
	
	</div>

</body>
</html>