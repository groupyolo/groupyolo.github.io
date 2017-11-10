<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	
	<form method="post" action="${pageContext.request.contextPath }/main/apiSignok.action">
	<table id="tbl">
	<tr>
		<th>
			이메일
		</th>
		<td>
			<input type="email" id="mEmail" name="mEmail" value="${dto.mEmail }" readonly>
		</td>
		<td>
		</td>
	</tr>
	<tr>
		<th>
			닉네임
		</th>
		<td>
			<input type="text" id="mNickName" name="mNickName" value="${dto.mNickName }">
		</td>
		<td>
		<!-- ajax용  -->
		</td>
	</tr>	
	
	
	</table>
	<input type="hidden" id="mgSeq" name="mgSeq" value="${dto.mgSeq }">
	<input type="submit" value="가입하기">
	<input type="button" onclick="history.back();">
	</form>
	
	<script>
	$("#mNickName").keyup(function(){
		var reg = /^[A-Za-z가-힣0-9]{0,12}$/;
		
		if($("#mNickName").val().length==0){
			$("#mNickNameResponse").html("");
			mNickNameCheck=false;
			
		}else if(reg.test($("#mNickName").val())){
			
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath }/main/mNickNameCheck.action",
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
	</script>
	
	
	
	
	
	
	