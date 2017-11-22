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
		border: 1px solid #837E7C;
	}
	
	
	#chatTop {
		background-color: #837E7C;
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
		height: 50px;
		color: black;
	}
	#send {
		display: inline-block;
		margin: 0px auto;
		float: right;
		width: 70px;
		height: 50px;
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
	
	#fourthchild, #secondchild, #thirdchild {
		height:50px;
	}
	
	.comsub {
		background: #4E4845;
		display:none;  /* 평상시에는 서브메뉴가 안보이게 하기 */
		height:auto;
		list-style:none;
		padding:3px;
		margin-top:15px;
		border:0px solid lightgrey;
		position:absolute;
		color: #FFF0F5;
		width:100px;
		z-index:200;
		font-size:1.1em;
	}
	
	.comsub li:hover{
		cursor:pointer;
	}
	
		
	#remotecon{
		border:0px solid black;
		width:100px;
		height:100px;
		position:fixed;
		top: 100px;
		right:20px;
		text-align: center;
		font-weight: bold;
		
	}
	
	
	
	</style>

	
	<div id="menutop" >
		<div id="topbar">
		<div class="logo"><a href=""><img src="${pageContext.request.contextPath }/css/images/logoorange.png" alt=""  style="width:32px; height:32px;" /></a></div>
			<!-- <div class="logo"><span style="color:red">Y</span><span>o</span><span style="letter-spacing:-2px; color:yellow">L!</span></div> -->
			<div class="topmenutext">
				<div><a href="${pageContext.request.contextPath }/member/myinfo.action">나의정보</a>
				</div>
				<div id="secondchild"><a href="${pageContext.request.contextPath }/member/mysites.action">내사이트</a>
					<ul class="comsub">
						<li onclick="location.href='${pageContext.request.contextPath}/member/mysites.action';">내사이트</li>
						<li onclick="location.href='${pageContext.request.contextPath}/member/teamMaster.action?mSeq=${loginDTO.mSeq}';">팀마스터</li>
					</ul>
				</div>
				<div id="thirdchild"><a href="${pageContext.request.contextPath }/member/community.action">커뮤니티</a>
					<ul id="comsub" class="comsub">
						<li onclick="location.href='${pageContext.request.contextPath}/member/communityBoard.action';">모집게시판</li>
						<li onclick="location.href='${pageContext.request.contextPath}/question/list.action';">질문게시판</li>
						<li onclick="location.href='${pageContext.request.contextPath}/community/freeboard/boardlist.action';">자유게시판</li>
					</ul>
				</div>
				<div id="fourthchild"><a href="${pageContext.request.contextPath }/main/faqview.action">고객지원</a>
					<ul class="comsub">
						<li onclick="location.href='${pageContext.request.contextPath}/member/faqview.action';">서포트센터</li>
						<li onclick="location.href='${pageContext.request.contextPath}/member/inquirylist.action';">문의게시판</li>		
					</ul>
				</div>
			</div>
			
		<script>
		
			$(".topmenutext").hover(
				function () {
					    $(".comsub").show();
				}, 
				function () {
					    $(".comsub").hide();
				}
			);
				
		</script>		
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
								
								$("#chatMiddle").scrollTop($(document).height() + 5000);
							
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
										
										$("#chatMiddle").scrollTop($(document).height() + 5000);
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