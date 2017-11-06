<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사이트 관리</h1>
	
	<select>
		<option value="">${pdto.siteName}</option>
	</select>
	<br>
		SITE URL : http://${pdto.prURL }<br>
		LAST UPDATA - 
		
		<h3>기본정보</h3>
			주소    http://${pdto.prURL} <br>
			브라우저 타이틀 ${pdto.siteName} <br>
			<c:if test="${pdto.opSeq == 0}"> 게시상태 미게시</c:if><br>
			<c:if test="${pdto.opSeq == 1}"> 게시상태 게시</c:if><br>
			
		<h3>요금제 및 도메인</h3>
		요금제    무료			업그레이드  <br>
		외부도메인   연결된 도메인이 없습니다.	 설정 <br />
		
		
		
		
</body>
</html>