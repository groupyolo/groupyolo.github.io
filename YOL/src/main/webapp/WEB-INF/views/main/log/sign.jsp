<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		
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
			닉네임(2자 이상 7자 이하)
		</th>
		<td>
			<input type="text" id="mNickName" name="mNickName">
		</td>
		<td id="mNickNameResponse">
		<!-- ajax용  -->
		
			
			<!-- 
		
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
	<input type="submit" value="낫옛" id="send">
	<input type="button" onclick="history.back();" value="뒤로가기">
	</form>
	
	<script>
	
	var mEmailCheck=false;
	var mNickNameCheck=false;
	var mPasswordCheck=false;
	var reMPasswordCheck=false;
	
	function checkSubmit(){
		
		if(mEmailCheck&&mNickNameCheck&&mPasswordCheck&&reMPasswordCheck){
			
			$("#send").val("클릭해라라라라라");
			
			
		}else{
			
			$("#send").val("낫옜");
			
		}
		
	}

	$("#mEmail").keyup(function(){
		
		
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
	
	$("#mNickName").keyup(function(){
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
			
			$("#mNickNameResponse").html("<div style='color:red;'>유효하지 않은 닉네임입니다.</div>");
			mNickNameCheck=false;
			
		}
		
	});
	
	$("#mPassword").keyup(function(){
		
		var reg = /^(?=[^\d_].*?\d)\w(\w|[!@#$%]){7,12}$/;
		
		
		if($("#mPassword").val().length==0){
			$("#mPasswordResponse").html("")
			mPasswordCheck=false;
			
		}else if(!reg.test($("#mPassword").val())){
			
			$("#mPasswordResponse").html("<div style='color:red;'>적절하지 않은 비밀번호입니다.</div>")
			mPasswordCheck=false;
			
		}else if(reg.test($("#mPassword").val())){

			$("#mPasswordResponse").html("");
			mPasswordCheck=true;
			checkSubmit();
			
		}
		
		
		
	});
	
	$("#reMPassword").keyup(function(){
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
