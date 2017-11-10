<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<style>

	#chatBox {
		overflow:auto;
		overflow-x: hidden;
		margin: 0px auto;
		width: 700px;
		height: 800px;
		border: 1px solid black;
	}

	#tblList {
		width: 700px;
		height: 800px;
		margin: 30px;
		padding-top:30px;
		margin: 0px auto;
	
	}
	
	#tblList tr  { padding: 10px; display: inline-block; }
	
	
	#tblList #member { background-color: #eee; border-radius: 50px; margin: 20px; }
	#tblList #member td:nth-child(1) { width: 80px; text-align:center; }
	#tblList #member td:nth-child(2) { width: 400px; }
	#tblList #member td:nth-child(3) { width: 200px; margin-left: 30px; float: left; font-size: 10pt; }
	
	#tblList #admin { float: right; background-color: yellow; border-radius: 50px; margin: 20px; }
	#tblList #admin td:nth-child(1) { width: 400px; }
	#tblList #admin td:nth-child(2) { width: 200px; float: right; font-size: 10pt;}
	
	#com {
		width: 700px;
		margin: 0px auto;
		margin-top: 30px;
	}
	
	#com #cContent {
		width: 600px;
		height: 30px;
		font-size: 14pt;
	}
	
	#com #btn {
		width: 90px;
		height: 35px;
	}

</style>
<script>

	
	$(document).ready(function() { 
		
		 var mseq = ${mseq};
		
		$("#chatBox").scrollTop($(document).height());
		
		$("#btn").click(function() {
			
			var Now = new Date();
			var NowTime = Now.getFullYear();

			NowTime += '-' + (Now.getMonth()+1);
			if( Now.getDate() < 10) { NowTime += '-' + 0 + Now.getDate(); }
			if( Now.getDate() > 9) { NowTime += '-' + Now.getDate(); }
			NowTime += ' ' + Now.getHours();
			NowTime += ':' + Now.getMinutes();
			if( Now.getSeconds() < 10) { NowTime += ':' + 0 + Now.getSeconds(); }
			if( Now.getSeconds() > 9 ) { NowTime += ':' + Now.getSeconds(); }
			
			var ccontent = $("#cContent").val();


			$.ajax({
				type: "get",
				url: "${pageContext.request.contextPath}/chat/addChat.action",
				data: "ccontent=" + ccontent + "&mseq=" + mseq,
				dataType: "json",
				success: function(result){
					
					if(result == 1) {
						//성공
						
						var tr = "<tr id='admin'>" +
									"<td>" + ccontent + "</td>" +
									"<td>" + NowTime + "</td>" +
									"</tr>";
									
							$("#tblList tbody").append(tr);
							
							$("#cContent").val("");
							
							$("#chatBox").scrollTop($(document).height());
						
					} else {
						//실패
						alert("메시지 전송에 실패하셨습니다.")
					}
					
				}
				
			});
			
		});

	
	});
	
	
</script>
	
	<!-- Chat View 주업무  -->
	
	<div id="chatBox">
		<table id="tblList">
			<thead>
				<tr id="member">
					<td>닉네임</td>
					<td>메시지</td>
					<td>날짜</td>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${list}" var="dto">
		
				<c:if test="${dto.cwseq == 1 }">
					<tr id="admin">
				</c:if>
				<c:if test="${dto.cwseq == 2 }">
					<tr id="member">
						<td>${dto.nickName}</td>
				</c:if>
						<td>${dto.ccontent}</td>
						<td>${dto.cdate}</td>
					</tr>
	
			</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div id="com">
		<input type="text" name="cContent" id="cContent">
		<input type="button" value="전송" id="btn">
	</div>

