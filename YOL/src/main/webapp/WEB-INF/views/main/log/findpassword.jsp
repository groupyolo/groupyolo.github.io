<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	#tbl{
		width:800px;
		margin:30px auto;
	}
	#status{
		padding:10px;
	}
	
</style>
    <div style="text-align:center;">
    <h2>비밀번호 찾기</h2>
    </div>
    <table id="tbl" >
    <tr>
    	<td>
		    <input type="text" name="mEmail" id="mEmail" class="form-control" placeholder="이메일을 입력하시오.">
    	</td>
       	<td>
		  	<input type="button" value="비번찾기" id="find"  class="btn btn-info">
    	</td>
    </tr>
    <tr>
    	<td colspan="2">
		    <div id="status"></div>
    	</td>
    </tr>
    
    </table>
    <script>
    	$("#find").click(function(){
		    $.ajax({	
				type:"get",
				url:"${pageContext.request.contextPath }/main/findpasswordcheck.action",
				dataType:"json",
				data:"mEmail="+$("#mEmail").val()+"&mgSeq=1",
				success:function(result){
					if(result.result==0){
						//해당 이메일이 없다. 
						$("#status").text("해당 이메일이 존재하지 않습니다.");
						
					}else if(result.result==1){
						//메일이 전송되었으니 확인해주십시오.
						$("#status").text("메일이 전송되었으니 확인해 주십시오.");
						
					}
					
				},
				error:function(err){
					alert(err);
				}
				
				
			});		
    		
    	});
    </script>