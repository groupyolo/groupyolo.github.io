<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<style>
		
		#box{ width:700px;margin:0px auto;}
		#tbl{margin-top:100px;}
		#tbl tr td{
			text-align: center;
			vertical-align: middle;
		}
		#tbl td:first-child{width:200px;padding-left:50px;text-align: right;}
		#tbl td:nth-child(2){width:200px;}
		#tbl td:nth-child(3){width:300px;}
		#tbl tr:LAST-CHILD td{text-align: left; padding-left:155px;}
	 	#send{ width:410px;}
	 	
	 	.centerAlign{
	 		margin:10px auto;
	 		text-align: center;
	 	}
	 		 	
	</style>
	
	
	<div id="signForm">
	<form method="post" action="${pageContext.request.contextPath }/member/editprofileok.action">
	<div id="box">
	<table id="tbl" class="table">

	<tr>
		<td>
			닉네임
		</td>
		<td>
			<input type="text" id="mNickName" name="mNickName" class="form-control" value="${loginDTO.mNickName }" required>
		</td>
		<td id="mNickNameResponse">
		<!-- ajax용  -->
		
			
			<!-- 
		
			 -->
		</td>
	</tr>	
	<tr>
		<td>
			비밀번호
		</td>
		<td>
			<input type="password" id="mPassword" name="mPassword"  class="form-control" required>
		</td>
		<td id="mPasswordResponse">
		<!-- ajax용  -->
		
		
		</td>
	</tr>	
	<tr>
		<td>
			비밀번호 다시 입력
		</td>
		<td>
			<input type="password" id="reMPassword" name="reMPassword" class="form-control"  required>
		</td>
		<td id="reMPasswordResponse">
		<!-- ajax용  -->
			
		</td>
	</tr>	
	
	<tr>
		<td colspan="3">
			<input type="button" value="가입하기" id="send" class="btn">
		</td>
	</tr>
	
	</table>
	<!-- <input type="button" onclick="history.back();" value="뒤로가기">
 -->
 	</div>	
 </form>
	
	</div>
	<script>

	var mNickNameCheck=false;
	var mPasswordCheck=false;
	var reMPasswordCheck=false;

	function checkSubmit(){
		
		if(mNickNameCheck&&mPasswordCheck&&reMPasswordCheck){
			
			$("#send").attr("type","submit");
			
			
		}else{
			
			$("#send").attr("type","button");
			
		}
		
	}

	
	$("#mNickName").change(function(){
		var reg = /^[A-Za-z가-힣0-9]{0,12}$/;
		
		if($("#mNickName").val().length==0){
			$("#mNickNameResponse").html("");
			mNickNameCheck=false;
			
		}else if(reg.test($("#mNickName").val())){
			
			$.ajax({
				type:"get",
				url:"/web/main/mnicknamecheck.action",
				data:"mNickName="+$("#mNickName").val(),
				dataType:"json",
				success:function(result){
					
					if(result.result>0){
						$("#mNickNameResponse").html("<div style='color:red;'>존재하는 닉네임입니다.</div>");
						mNickNameCheck=false;
					}else if(result.result==0){
						$("#mNickNameResponse").html("");						
						mNickNameCheck=true;
						checkSubmit();
					}
					
				},
				error:function(err){
					alert(err);
				}
					
				
			});
			
		}else if(!reg.test($("#mNickName").val())){
			
			$("#mNickNameResponse").html("<div style='color:red;'>2자 이상 7자 이하</div>");
			mNickNameCheck=false;
			
		}
		
	});
	
	$("#mPassword").change(function(){
		
		var reg = /^(?=[^\d_].*?\d)\w(\w|[!@#$%]){7,12}$/;
		
		
		if($("#mPassword").val().length==0){
			$("#mPasswordResponse").html("")
			mPasswordCheck=false;
			
		}else if(!reg.test($("#mPassword").val())){
			
			$("#mPasswordResponse").html("<div style='color:red;'>8자 이상 12자 이하, 숫자 하나 이상 포함, 숫자로 시작X</div>")
			mPasswordCheck=false;
			
		}else if(reg.test($("#mPassword").val())){

			$("#mPasswordResponse").html("");
			mPasswordCheck=true;
			checkSubmit();
			
		}
		
		
		
	});
	
	$("#reMPassword").change(function(){
		if($("#reMPassword").val().length==0){
			$("#reMPasswordResponse").html("");
			reMPasswordCheck=false;
			
		}else if($(this).val()!=$("#mPassword").val()){
			$("#reMPasswordResponse").html("<div style='color:red;'>동일하지 않은 비밀번호입니다.</div>")
			reMPasswordCheck=false;
			
		}else if($(this).val()==$("#mPassword").val()){
		
			$("#reMPasswordResponse").html("");
			reMPasswordCheck=true;
			checkSubmit();
		}

	});
	
	
	
	</script>
