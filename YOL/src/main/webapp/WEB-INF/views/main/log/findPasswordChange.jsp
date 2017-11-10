<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <form action="${pageContext.request.contextPath }/main/findPasswordok.action" method="post">
   <table>
   <tr>
   	<th>
   	이메일
   	</th>
   	<td>
	   <input type="text" name="mEmail" id="mEmail" value="${mEmail }" readonly>
   	</td>
   	<td>
   	</td>
   </tr>
   <tr>
   	<th>
   	비밀번호 입력
   	</th>
   	<td>
	   <input type="password" name="mPassword" id="mPassword" required>
   	</td>
   	<td id="mPasswordResponse">
   	</td>
   </tr>
   
   <tr>
   	<th>
   	비밀번호 다시 입력
   	</th>
   	<td>
	   <input type="password" name="reMPassword" id="reMPassword" required>
   	</td>
   	<td id="reMPasswordResponse">
   	</td>
   </tr>

   </table>
   <input type="submit" value="보내기">
  </form>
   
   
    
    <script>
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