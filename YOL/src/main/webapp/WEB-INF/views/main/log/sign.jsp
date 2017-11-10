<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<style>
	
		#tbl{margin-top:100px;}
		#tbl td:first-child{width:200px;padding-left:100px;}
		#tbl td:nth-child(2){width:200px;}
		#tbl td:nth-child(3){width:300px;}
	 	#send{ width:460px;}
	 	 
	</style>
	약관
	<!-- 약관 명시 -->
	<form method="post" action="${pageContext.request.contextPath }/main/signok.action">
	<table id="tbl" class="table">
	
	<tr>
		<td>
			메일
		</td>
		<td>
			<input type="email" id="mEmail" name="mEmail" class="form-control" required>
		</td>
		<td id="mEmailResponse">
		
		</td>
	</tr>
	<tr>
		<td>
			닉네임
		</td>
		<td>
			<input type="text" id="mNickName" name="mNickName" class="form-control"  required>
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
 -->	</form>
	
	<script>
	
	var mEmailCheck=false;
	var mNickNameCheck=false;
	var mPasswordCheck=false;
	var reMPasswordCheck=false;
	
	function checkSubmit(){
		
		if(mEmailCheck&&mNickNameCheck&&mPasswordCheck&&reMPasswordCheck){
			
			$("#send").attr("type","submit");
			
			
		}else{
			
			$("#send").attr("type","button");
			
		}
		
	}
	$("#mEmail").keyup(function(){
		
	});
	
	
	$("#mEmail").change(function(){
		
		
		var reg = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		
		if($("#mEmail").val().length==0){
			$("#mEmailResponse").html("");
			mEmailCheck=false;
			
		}else if(reg.test($("#mEmail").val())){
			
			$.ajax({
				type:"get",
				url:"/web/main/mEmailCheck.action",
				data:"mEmail="+$("#mEmail").val(),
				dataType:"json",
				success:function(result){
					
					if(result.result>0){
						$("#mEmailResponse").html("<div style='color:red;'>존재하는 이메일입니다.</div>");
						mEmailCheck=false;
					}else if(result.result==0){
						$("#mEmailResponse").html("");						
						mEmailCheck=true;
						checkSubmit();
					}
					
				},
				error:function(err){
					alert(err);
				}
				
			});
			
		}else if(!reg.test($("#mEmail").val())){
			
			$("#mEmailResponse").html("<div style='color:red;'>이메일을 입력하세요.</div>");
			mEmailCheck=false;
			
		}
		
			
		
	});
	
	$("#mNickName").change(function(){
		var reg = /^[A-Za-z가-힣0-9]{0,12}$/;
		
		if($("#mNickName").val().length==0){
			$("#mNickNameResponse").html("");
			mNickNameCheck=false;
			
		}else if(reg.test($("#mNickName").val())){
			
			$.ajax({
				type:"get",
				url:"/web/main/mNickNameCheck.action",
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
