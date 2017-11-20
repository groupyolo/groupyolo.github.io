<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.topmenutext div{
		cursor:pointer;
	}
</style>
	
	<div id="menutop" >
		<div id="topbar">
			<div class="logo"><a href=""><img src="${pageContext.request.contextPath }/css/images/logoorange.png" alt=""  style="width:32px; height:32px;" /></a></div>
			<div class="topmenutext" align="center">
				<div onclick="">회원관리</div>
				<div onclick="location.href='/web/admin/noticeBoard.action';">공지사항</div>
				<div onclick="location.href='/web/admin/inquiry.action';">문의사항</div>
				<div onclick="location.href='/web/admin/faq.action';">FAQ</div>
			</div>
			<div class="smallmenu" onclick="location.href='/web/main/login.action';"><span class="ui-icon-lightbulb ui-icon-arrowthick-1-n"></span><span>로그인</span></div>
		</div> 
	</div>
