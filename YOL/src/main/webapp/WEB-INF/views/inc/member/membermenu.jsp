<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>

	.chatmenu {
	margin-top: 15px;
	float: right;
	display:inline-block;
	color:white;
	}
	
	.chatmenu:hover {
		cursor: pointer;
	}

	.chatmenu #chat {
		display: none;
		padding:0px;
		margin:0px;
		margin-top: 100px;
		position: fixed;
		width:300px;
		height:400px;l;
		cursor: default;
	}
	
	#chatBox {
		margin-right: 30px;
		float: right;
	}
	
	
	#chatTop {
		background-color: black;
		color: white;
		width: 330px;
		height: 50px;
		text-align:center;
		font-weight: bold;
		padding-top: 15px;
	}
	
	#chatTop i {
		vertical-align: center; 
		margin-right:15px; 
		font-size: 18pt; 
		float: right;
		cursor: pointer;
	}
	
	#chatMiddle {
		padding:10px;
		background-color: skyblue;
		color: black;
		width: 330px;
		height: 500px;
		overflow:auto;
		overflow-x: hidden;
	}
	
	#chatFooter {
		width: 330px;
		height: 50px;
		margin: 0px auto;
		display: inline-block;
	}
	#chatText {
		width: 260px;
		color: black;
	}
	#send {
		display: inline-block;
		margin: 0px auto;
		float: right;
		width: 50px;
		height: 50px;
		margin-right: 20px;
		color: black;
	}
	
	#tblList {
		width: 310px;
		height: 500px;
		margin: 5px;
		padding-top:5px;
		margin: 0px auto;
		font-size: 9pt;
	}
	
	#tblList tr  { padding: 2px; display: inline-block; font-weight: bold;}
	
	
	#tblList #admin { background-color: #eee; border-radius: 50px; margin: 10px; float:left; }
	#tblList #admin td:nth-child(1) { width: 60px; text-align:center; padding:2px; }
	#tblList #admin td:nth-child(2) { width: 130px; }
	#tblList #admin td:nth-child(3) { width: 130px; margin-right: ; float: right; font-size: 7pt; }
	
	#tblList #member { float: right; background-color: yellow; border-radius: 50px; margin: 10px; padding-right: 5px; }
	#tblList #member td:nth-child(1) { width: 200px; padding-left: 20px; padding-top: 10px; }
	#tblList #member td:nth-child(2) { width: 130px; float: right; font-size: 7pt;}
				
	</style>

	<div id="menutop" >
		<div id="topbar">
		<div class="logo"><a href=""><img src="${pageContext.request.contextPath }/css/images/logoorange.png" alt=""  style="width:32px; height:32px;" /></a></div>
			<!-- <div class="logo"><span style="color:red">Y</span><span>o</span><span style="letter-spacing:-2px; color:yellow">L!</span></div> -->
			<div class="topmenutext">
				<div><a href="${pageContext.request.contextPath }/member/myinfo.action">나의정보</a>

				</div>
				<div><a href="${pageContext.request.contextPath }/member/mysites.action">내사이트</a></div>
				<div><a href="${pageContext.request.contextPath }/member/community.action">커뮤니티</a></div>
				<div><a href="${pageContext.request.contextPath }/supports.action">고객지원</a></div>
			</div>
			
			
			
			<!-- 채팅창 버튼 -->
			<div class="chatmenu" style="margin-left: 30px;">
			
				<div id="chatButton" style="display:inline-block;">
					<i class="fa fa-weixin" aria-hidden="true"style="vertical-align: center; padding-left:2px;"></i>
					<span style="padding-left:5px;">채팅</span>
				</div>
				
					<div id="chat">
						<div id="chatBox">
							<div id="chatTop">
								<span>관리자와 1:1 채팅</span>
								<i class="fa fa-times" aria-hidden="true" id="chatClose"></i>
							</div>

							<div id="chatMiddle">
								<table id="tblList">
									<tbody>
										
									</tbody>
								</table>
							</div> 
							
							<div id="chatFooter">
								<input type="button" id="send" value="전송" onclick="send();">
								<textarea id="chatText" name="chatText" ></textarea>
								
							</div>
							
						</div>
					</div>		
			</div>
			
			<script>
			
			function send() {
				
				var Now = new Date();
				var NowTime = Now.getFullYear();

					NowTime += '-' + (Now.getMonth()+1);
					if( Now.getDate() < 10) { NowTime += '-' + 0 + Now.getDate(); }
					if( Now.getDate() > 9) { NowTime += '-' + Now.getDate(); }
					NowTime += ' ' + Now.getHours();
					NowTime += ':' + Now.getMinutes();
					if( Now.getSeconds() < 10) { NowTime += ':' + 0 + Now.getSeconds(); }
					if( Now.getSeconds() > 9 ) { NowTime += ':' + Now.getSeconds(); }
				
				var ccontent = $("#chatText").val();
				var mseq = ${loginDTO.mSeq};
				
				console.log(ccontent);
				console.log(mseq);
				
				$.ajax({
					type: "get",
					url: "${pageContext.request.contextPath}/chat/MaddChat.action",
					data: "ccontent=" + ccontent + "&mseq=" + mseq,
					dataType: "json",
					success: function(data) {
						if(data == 1) {
							
							var text = "<tr id='member'>";
	
								text += "<td>" + ccontent + "</td>";
								text += "<td>" + NowTime + "</td>";
								
								text += "</tr>";
								
								$("#tblList tbody").append(text);
								$("#chatText").val("");
								
								$("#chatMiddle").scrollTop($(document).height());
							
						} else {
							
							alert("현재 관리자와의 채팅을 이용할 수 없습니다.")
							
						}
						
						
					}
				});
				
			};
			
			$(document).ready(function() {

				var showOrHide = true;
				
				$("#chatButton").toggle(showOrHide);

					$("#chatButton, #chatClose").click(function() { 

						if(showOrHide === true) {
						
						$("#chat").show();
						
						 $.ajax({
							type: "get",
							url: "${pageContext.request.contextPath}/chat/chatView.action",
							dataType: "json",
							success : function(data) {
								console.log(data);
								if($(data).size() > 0) {
									
									$(data).each(function(index,list) {
										
									if (list.cwseq == 1) {
										var text = "<tr id='admin'>";
										text += "<td>" + "관리자 :" + "</td>";
										
									} else if (list.cwseq == 2) {
										var text = "<tr id='member'>";
										
									}
										text += "<td>" + list.ccontent + "</td>";
										text += "<td>" + list.cdate + "</td>";
										
										text += "</tr>";
										
										$("#tblList tbody").append(text);
										
										$("#chatMiddle").scrollTop($(document).height());
									});
								} 
							}
							
						}); 
						 showOrHide = false;
						 
						} else if(showOrHide === false) {
							
							$("#tblList tbody").html("");
							$("#chat").hide();
							showOrHide = true;
							
						}
					});
			 }); 
			</script>
			
			
			
			<div class="smallmenu"><i class="fa fa-bell" aria-hidden="true"></i>
				
				<div id="nickv" style="display: inline-block;">
				<span style="padding-left:5px;">${loginDTO.mNickName}</span>
				<i class="fa fa-sort-desc" aria-hidden="true"style="vertical-align: top; padding-left:2px;"></i>
			    <ul id="ultoggle">
			           <li><a href="${pageContext.request.contextPath }/member/myinfo.action">my profile</a></li>
			           <li><a href="${pageContext.request.contextPath }/member/mysites.action">my sites</a></li>
			           <li><a href="#">support</a></li>
			           <li onclick="logout()">logout</li>
	         	</ul>
	         	</div>
				<script>
				
					$("#nickv").click(function(){
						$("#ultoggle").toggle("fast")
					});
					
					function logout(){
						sessionStorage.clear();
						location.href="${pageContext.request.contextPath }/main/frontview.action";
					}
				
				</script>
			</div>		
		</div> 
	</div>
	
	<div id="core">