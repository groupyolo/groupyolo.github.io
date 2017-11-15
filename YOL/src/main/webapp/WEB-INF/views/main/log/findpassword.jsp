<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <input type="text" name="mEmail" id="mEmail">
  	<input type="button" value="비번찾기" id="find">
    
    <div id="status"></div>
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