<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
   <input type="text" name="mEmail" id="mEmail" value=" ${mEmail }" readonly>
   비밀번호 새로 입력:
   비밀번호 다시 입력:
   
   
   
    
    <script>
	    $.ajax({	
			type:"get",
			url:"/web/main/findPasswordCheck.action",
			dataType:"json",
			data:"mEmail="+mEmail+"&mgSeq=1",
			success:function(result){
				if(result.result==0){
					//해당 이메일이 없다. 
				
				}else if(result.result==1){
					//메일이 전송되었으니 확인해주십시오.
					
				}
				
			},
			error:function(err){
				alert(err);
			}
			
			
		});		
    </script>