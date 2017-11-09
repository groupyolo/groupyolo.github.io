<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="/web/js/jquery-1.12.4.js"></script>
<style>
</style>
</head>
<body>
	
	<form method="post" action="/web/main/signok.action">
	<table id="tbl">
	
	<tr>
		<th>
			메일
		</th>
		<td>
			<input type="email" id="mEmail" name="mEmail">
		</td>
		<td id="mEmailResponse">
		
		</td>
	</tr>
	<tr>
		<th>
			닉네임
		</th>
		<td>
			<input type="text" id="mNickName" name="mNickName">
		</td>
		<td id="mNickNameResponse">
		<!-- ajax용  -->
		
			
			<!-- 
			^[A-Za-z가-힣0-9]{0,12}$
			 -->
		</td>
	</tr>	
	<tr>
		<th>
			비밀번호(8자 이상 12자 이하, 숫자 하나 이상 포함, 숫자로 시작 못함)
		</th>
		<td>
			<input type="password" id="mPassword" name="mPassword">
		</td>
		<td id="mPasswordResponse">
		<!-- ajax용  -->
		
		
		</td>
	</tr>	
	<tr>
		<th>
			비밀번호 다시 입력
		</th>
		<td>
			<input type="password" id="reMPassword" name="reMPassword">
		</td>
		<td id="reMPasswordResponse">
		<!-- ajax용  -->
			
		</td>
	</tr>	
	
	
	</table>
	<input type="submit" value="가입하기">
	<input type="button" onclick="history.back();" value="뒤로가기">
	</form>
	
	<script>
	
	var mEmailCheck=false;
	var mNickNameCheck=false;
	var mPasswordCheck=false;
	var reMPasswordCheck=false;
	
	
	$("#mEmail").keyup(function(){
		
		
		var reg = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		
		if(reg.test($("#mEmail").val())){
			
			$.ajax({
				type:"get",
				url:"",
				data:"mEmail="+$("#mEmail").val(),
				dataType:"json",
				success:function(){
					
					console.log("aaa");
				/* 	if(){
						
						mEmailCheck=true;
					}else if(){
												
						mEmailCheck=false;
					} */
					
				},
				error:function(err){
					alert(err);
				}
					
				
			});
			
		}else if(!reg.test($("#mEmail").val())){
			
			$("#mEmail").html("<div style='color:red;'>이메일을 입력하세요.</div>");
			mEmailCheck=false;
			
		}else if($("#mEmail").val().length==0){
			$("#mEmail").html("");
			mEmailCheck=false;
			
		}
		
			
		
	});
	
	$("#mNickName").keyup(function(){
		
	});
	
	$("#mPassword").keyup(function(){
		
		var reg = /^(?=[^\d_].*?\d)\w(\w|[!@#$%]){7,12}$/;
		if(!reg.test($("#mPassword").val())){
			
			$("#mPasswordResponse").html("<div style='color:red;'>적절하지 않은 비밀번호입니다.</div>")
			mPasswordCheck=false;
			
		}else if(reg.test($("#mPassword").val())){

			$("#mPasswordResponse").html("");
			mPasswordCheck=true;
			
		}else if($("#mPasswordResponse").val().length==0){
			$("#mPasswordResponse").html("")
			mPasswordCheck=false;
			
		}
		
		
		
	});
	
	$("#reMPassword").keyup(function(){
		
		if($(this).val()!=$("#mPassword").val()){
			$("#reMPasswordResponse").html("<div style='color:red;'>동일하지 않은 비밀번호입니다.</div>")
			reMPasswordCheck=false;
			
		}else if($(this).val()==$("#mPassword").val()){
		
			$("#reMPasswordResponse").html("");
			reMPasswordCheck=true;
		}else if($("#reMPasswordResponse").val().length==0){
			$("#reMPasswordResponse").html("");
			reMPasswordCheck=false;
			
		}

	});
	
	
	</script>

</body>
</html>