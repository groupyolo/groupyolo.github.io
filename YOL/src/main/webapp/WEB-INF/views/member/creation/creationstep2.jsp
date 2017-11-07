<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

	session.setAttribute("mSeq", "10");

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script
  src="https://code.jquery.com/jquery-1.12.4.js"
  integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="/web/resources/css/memberpage.css">
<style>
</style>

<script>
	
	$(document).ready(function(){
		
		$("#pnum").hide();
	});
	
	
	
function m1(){
	
	if($(":input:radio[name=ptype]:checked").val()=="share"){
		$("#pnum").show();	   
	}else{
		$("#pnum").hide();
	}
		
}


</script>

</head>
<body>

	<!-- 생성 버튼 눌렀을 때 modal -->

	<div id="cprojectstep2">
		<h4>STEP : 2</h4>
		<form method="POST" action="">
		<table id="step2tbl">
			<tr>
				<th colspan="2">브라우저 타이틀</th>
			</tr>
			<tr>
				<td colspan="2"><input type="text" class="textbox" name="siteName" placeholder="사이트명을 입력하세요. 브라우저 상단에 나타납니다." minlength="4" maxlength="15" required /></td>
			</tr>
			<tr>
				<td colspan="2"><span>*최초 설정 이후에도 편집모드에서 수정하실 수 있습니다.</span></td>
			</tr>
			<tr>
				<th colspan="2">사이트 URL</th>
			</tr>
			<tr>
				<!-- ajax로 중복검사해야함 -->
				<td colspan="2"><input type="text" class="textbox" name="prURL" placeholder="원하는 주소를 입력하세요." required /></td>
			</tr>
			<tr>
				<td colspan="2"><span>*url은 최초 설정 이후 1회 변경이 가능하니 신중하게 입력해 주세요</span></td>
			</tr>
			<tr>
				<th style="width:100px;">공개여부</th>		
				<td><select name="opSeq" id=""><option value="0">비공개</option><option value="1">공개</option></select></td>
			</tr>
		</table>
		<div class="crtbtns">
		
			<!-- 프로젝트 최대참가 인원수 -->
			<input type="hidden" name="pnum" value="<%=request.getParameter("pnum") %>"/>
			<!-- 프로젝트명 -->
			<input type="hidden" name="prName" value="<%=request.getParameter("prName") %>"/>
			<!-- 프로젝트 설명 -->
			<input type="hidden" name="jContent" value="<%=request.getParameter("jContent") %>"/>
			
			<input type="button" value="이전단계로" onclick="history.back();" />
			<input type="submit" value="다음단계로" />		
		</div>
		</form>
	</div>
	

</body>
</html>