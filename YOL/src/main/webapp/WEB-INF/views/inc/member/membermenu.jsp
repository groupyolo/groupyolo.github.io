<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


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
			<div class="smallmenu"><i class="fa fa-bell" aria-hidden="true"></i>
				
				<div id="nickv" style="display: inline-block;">
				<span style="padding-left:5px;">${loginDTO.mNickName}</span>
				<i class="fa fa-sort-desc" aria-hidden="true"style="vertical-align: top; padding-left:2px;"></i>
			    <ul id="ultogle">
			           <li><a href="${pageContext.request.contextPath }/member/myinfo.action">my profile</a></li>
			           <li><a href="${pageContext.request.contextPath }/member/mysites.action">my sites</a></li>
			           <li><a href="#">support</a></li>
			           <li><a href="#">logout</a></li>
	         	</ul>
	         	</div>
				<script>
				
					$("#nickv").click(function(){
						$("#ultogle").toggle("fast")
					});
				
				</script>
			</div>
		</div> 
	</div>
	
	<div id="core">