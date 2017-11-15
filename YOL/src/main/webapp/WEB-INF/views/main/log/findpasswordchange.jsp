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
    <form action="${pageContext.request.contextPath }/main/findPasswordok.action" method="post">
   <div id="#box">
   <table id="tbl" class="table">
   <tr>
   	<td>
   	이메일
   	</td>
   	<td>
	   <input type="text" class="form-control" name="mEmail" id="mEmail" value="${mEmail }" readonly>
   	</td>
   	<td>
   	</td>
   </tr>
   <tr>
   	<td>
   	비밀번호 입력
   	</td>
   	<td>
	   <input type="password"  class="form-control" name="mPassword" id="mPassword" required>
   	</td>
   	<td id="mPasswordResponse">
   	</td>
   </tr>
   
   <tr>
   	<td>
   	비밀번호 다시 입력
   	</td>
   	<td>
	   <input type="password"  class="form-control" name="reMPassword" id="reMPassword" required>
   	</td>
   	<td id="reMPasswordResponse">
   	</td>
   </tr>
	<tr>
	<td colspan="3">
		<input id="send" type="submit" class="btn" value="비밀번호 변경" style="width:340px;">
		</td>
	</tr>
   </table>
 
  	</div>
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