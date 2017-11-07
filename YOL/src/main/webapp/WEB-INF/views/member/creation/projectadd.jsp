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
<style>

	#cprojectstep2{
		width:400px; height:400px;
		border: 1px solid black;
	}

	#cprojectstep2 table tr{
		height:30px;
	}

	#cprojectstep2 table tr th{
		text-align: left;	
		border: 1px solid red;
	}

	#cprojectstep2 table tr td span{
		color: #222;
		font-size: 10px;
	}
	
	
	#cprojectstep1{
		width:400px; height:400px;
		border: 1px solid black;
	}
	
	#step1tbl{
		width:100%;
		border: 1px solid blue;
	}
	
	
	
	#step1tbl tr:nth-child(1) th{
		width:98%;
	}
	
	#step1tbl th{
		text-align: left;
	}
	
	#step1tbl tr:nth-child(1) td{
		float:right;
		border: 1px solid red;
	}
	
	#step1tbl tr:nth-child(2) td{
		border: 1px solid red;
	}
	
	#step1tbl tr:nth-child(4) th{
		width:98%;
		border: 1px solid red;
	}
	#step1tbl tr:nth-child(7) th{
		width:20%;
		border: 1px solid blue;
	}
	
	
	#step2tbl{
		width:100%;
	}
	
	
	.crtbtns{
		text-align: right;
	}
	
	.textbox{
		width:98%; height:25px;
		
	}
	
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

	<div id="cprojectstep1">
		<form method="POST" action="">
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
							<select name="pnum" id="pnum" style="display:hidden;">
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
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
				<input type="button" value="취소" />
				<input type="submit" value="다음단계" />
			</div>
			
		</form>
		
	</div>


	<div id="cprojectstep2">
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
			<input type="button" value="취소" />
			<input type="submit" value="다음단계로" />		
		</div>
		</form>
	</div>
	

</body>
</html>
