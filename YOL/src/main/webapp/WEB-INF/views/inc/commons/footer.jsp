<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	</div>
	 
   	<footer id="footer">
		
		<div id="footmenu">
			<div id="menulist">
			<div><span>서비스</span>
				<ul>
					<li><a href="${pageContext.request.contextPath }/main/templateView.action">템플릿</a></li>
					<li><a href="">요금제</a></li>
				</ul>
			</div>
			<div><span>회사소개</span>
				<ul>
					<li><a href="${pageContext.request.contextPath }/main/company.action">회사 소개</a></li>
					<li><a href="${pageContext.request.contextPath }/main/company2.action">개발자 소개</a></li>
				</ul>
			</div>
			<div><span>고객지원</span>
				<ul>
					<li><a href="${pageContext.request.contextPath }/main/faqview.action">서포트센터</a></li>
					<li><a href="${pageContext.request.contextPath }/inquiry/list.action">문의하기</a></li>
					<li><a href="">공지</a></li>
					
				</ul>
			</div>
			<div><span>개인정보 취급방침</span></div>
			</div>
		</div>		
	

		<div class='footer_logo clear'>
			<div id='companyinfo'>
				<img src="${pageContext.request.contextPath }/css/images/logoorange.png" alt=""  style="width:20px; height:20px;" />
				<span style="font-weight: bold;">YOL.COM</span>
				<span>132, Teheran-ro, Gangnam-gu, Seoul, Republic of Korea</span>
				<span>Registration No. : 000-00-00000</span>
				<span>Representative : JungAh Park</span>
				<span>+82-070-0000-0000</span>
				<address style="font-weight: bold;">Copyright©YOL.COM All Rights Reserved.</address>
			</div>
			
		</div>
	
	</footer>