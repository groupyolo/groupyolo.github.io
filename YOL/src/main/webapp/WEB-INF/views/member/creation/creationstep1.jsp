<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
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
			$("#pnum").val("1");
			$("#pnum").hide();
		}
			
	}
	

</script>

</head>
<body>

	<!-- 생성 버튼 눌렀을 때 modal -->

	<div id="cprojectstep1">
		<h4>STEP : 1</h4>
		<form method="POST" action="/web/member/creationstep2.action">
			<table id="step1tbl">
				<tr>
					<th colspan="4">
						프로젝트명
					</th>
				</tr>
				<tr>
					<td colspan="4">
						<input type="radio" class="rdo" name="ptype" value="private" checked onclick="m1();"/>개인
						<input type="radio" class="rdo" name="ptype" value="share" onclick="m1();" />공용
							<select name="pnum" id="pnum">
								<option value="2">2인용</option>
								<option value="3">3인용</option>
								<option value="4">4인용	</option>
							</select>
					</td>				
				</tr>
				
				<tr>
					<td colspan="4">
						<input type="text" class="textbox" name="prName" placeholder="프로젝트명을 입력하세요." required />
					</td>
				</tr>
				<tr>
					<th style="text-align: left;" colspan="4">
						프로젝트 설명
					</th>					
				</tr>
				<tr>
					<td colspan="4"><textarea name="jContent" style="width:98%; height:100px;"></textarea></td>
				</tr>
				<tr>
					<th colspan="4" style="text-align: left">기간 설정</th>
				</tr>
				<tr>
					<th>시작일</th>
					<td><input type="date" name="jStart" /></td>
					<th>종료일</th>
					<td><input type="date" name="jStart" /></td>
				</tr>
			
			</table>
			
			<div class="crtbtns">
				<input type="submit" value="다음단계" title="다음 단계로 이동합니다."/>
			</div>
			
		</form>
		
	</div>


</body>
</html>