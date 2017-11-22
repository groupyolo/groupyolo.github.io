<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.topmenutext div{
		cursor:pointer;
	}
	
	#menutop { color:white; }
</style>
	

	<div id="menutop" >
		<div id="topbar">
			<div class="logo"><a href=""><img src="${pageContext.request.contextPath }/css/images/logoorange.png" alt=""  style="width:32px; height:32px;" /></a></div>
	<c:if test="${AdminDTO != null}">
			<div class="topmenutext" align="center">
				<div onclick="location.href='/web/admin/adminMember.action';">회원관리</div>
				<div onclick="location.href='/web/chat/list.action';">채팅문의</div>
				<div onclick="location.href='/web/admin/noticeBoard.action';">공지사항</div>
				<div onclick="location.href='/web/admin/inquiry.action';">문의사항</div>
				<div onclick="location.href='/web/admin/faq.action';">FAQ</div>
			</div>
	
			<div class="smallmenu" onclick="location.href='/web/main/login.action';"><i class="fa fa-bell" aria-hidden="true"></i>
			<span class="ui-icon-lightbulb ui-icon-arrowthick-1-n"></span><span>관리자모드</span></div>
	</c:if>
	
		</div> 
	
	</div>
