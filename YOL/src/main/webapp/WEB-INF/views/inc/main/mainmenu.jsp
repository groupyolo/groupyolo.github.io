<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.topmenutext div{
		cursor:pointer;
	}
</style>
	
	<div id="menutop" >
		<div id="topbar">
			<div class="logo"><span style="color:red">Y</span><span>o</span><span style="letter-spacing:-2px; color:yellow">L!</span></div>
			<div class="topmenutext">
				<div onclick="location.href='/web/main/login.action';">회사소개</div>
				<div onclick="location.href='/web/main/frontView.action';">기능소개</div>
				<div onclick="location.href='/web/main/login.action';">둘러보기</div>
				<div onclick="location.href='/web/main/login.action';">Template</div>
				<div onclick="location.href='/web/main/faqView.action';">고객지원</div>
			</div>
			<div class="smallmenu" onclick="location.href='/web/main/login.action';"><span class="ui-icon-lightbulb ui-icon-arrowthick-1-n"></span><span>로그인</span></div>
		</div> 
	</div>
