<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.topmenutext div{
		cursor:pointer;
	}
</style>
	
	<div id="menutop" >
		<div id="topbar">
			<div class="logo"><a href="${pageContext.request.contextPath}/main/frontview.action"><img src="${pageContext.request.contextPath }/css/images/logowhite.png" alt=""  style="width:32px; height:32px;" /></a></div>
			<div class="topmenutext">
				<div onclick="location.href='${pageContext.request.contextPath}/main/company.action';">회사소개</div>
				<div onclick="location.href='${pageContext.request.contextPath}/main/frontview.action';">기능소개</div>
				<div onclick="location.href='${pageContext.request.contextPath}/main/login.action';">둘러보기</div>
				<div onclick="location.href='${pageContext.request.contextPath}/main/login.action';">Template</div>
				<div onclick="location.href='${pageContext.request.contextPath}/main/faqview.action';">고객지원</div>
			</div>
			<div class="smallmenu" onclick="location.href='/web/main/login.action';"><span class="ui-icon-lightbulb ui-icon-arrowthick-1-n"></span><span>로그인</span></div>
		</div> 
	</div>
