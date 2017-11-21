<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	#box{ width:700px;margin:0px auto;}
	#tbl{margin-top:100px;}
	#tbl tr td{
		text-align: center;
		vertical-align: middle;
	}
	#tbl td:FIRST-CHILD{width:200px;padding-left:50px;text-align: right;}
	#tbl td:nth-child(2){width:200px;}
	#tbl td:nth-child(3){width:300px;}
	#tbl tr:LAST-CHILD td{text-align: left; padding-left:230px;}
 	#send{ width:410px;}
</style>
	<form method="post" action="${pageContext.request.contextPath }/main/apisignok.action">
	<div id="box">
	<table id="tbl" class="table">
	<tr>
		<td>
			이메일
		</td>
		<td>
			<input type="email" id="mEmail" name="mEmail" value="${dto.mEmail }" class="form-control"readonly>
		</td>
		<td>
		</td>
	</tr>
	<tr>
		<td>
			닉네임
		</td>
		<td>
			<input type="text" id="mNickName" name="mNickName" value="${dto.mNickName }" class="form-control">
		</td>
		<td>
		<!-- ajax용  -->
		</td>
	</tr>	
	<tr>
		<td colspan="3">
		<input id="send" type="submit" class="btn" value="가입하기" style="width:340px;">
		</td>
	</tr>	
	
	</table>
	<input type="hidden" id="mgSeq" name="mgSeq" value="${dto.mgSeq }">
	</div>
	</form>
	
	<script>
	var mNickNameCheck=false;
	
	function checkSubmit(){
		
		if(mNickNameCheck){
			
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
				url:"${pageContext.request.contextPath }/main/mnicknamecheck.action",
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
	</script>
	
	
	
	
	
	
	