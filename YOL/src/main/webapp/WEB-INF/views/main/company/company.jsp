<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>    

<style>

	#all {
		width: 100%;
		height: 100%;
	}

	#top {
		width: 100%;
		height: 500px;
	}

	#topContent {
		margin: 0px auto;
		margin-top: 130px;
		text-align: center;
	}
	
	#topContent2 {
		width: 500px;
		border: 1px solid black;
		border-radius: 100px; 
		margin: 0px auto;
		margin-top: 100px;
	}
	
	#topContent2 div {
		font-size: 20pt;
		color: black;
		display: inline-block;
		width: 247px;
		text-align: center;
	}
	
	#topContent:nth-child(2) { margin-left: 40px; margin-top: 30px;}
	
	#topContent2 div:hover {
		border-radius: 100px;
		color: white;
		background-color: cornflowerblue;
	}
	
	.content {
		width: 100%;
		height: 700px;
		display:block;
		background-color: white;
		padding-top: 100px;
		padding-bottom: 100px;
	}
	
	.content #title {
		margin-top: 100px;
		margin-left: 200px;
		width: 200px;
		float: left;
		text-align: center;
	}
	
	.content #sub {
		width: 400px;
		margin-left: 300px;
		display: inline-block;
	}
	.content p {
		display: inline-block;
	}
	
	.content #sub2 {
		margin-top: 100px;
		margin-left: 200px;
		width: 400px;
		display: inline-block;
	}
	
	.content #title2 {
		width: 300px;
		margin-right: 250px;
		margin-top: 180px;
		float: right;
	}

	.slider{
		width: 100%;
		background-color: cornflowerblue;
		height: 700px;
	}
	
	.slider h1 {
		text-align:center;
		margin: 0px auto;
		padding-top: 300px;
		font-size: 100pt;
		color: white;
	}

	.overflow{
		width: 100%;
		height: 100%;
		top: 0;
	}
	
	
</style>
<script>
	
	$(document).ready(function() {
		
	
	var ovf, slider, ovf2, slider2;
	
	$(function(){
		
		ovf = this.getElementById("overflow");
		slider = this.getElementById("slider");
		ovf2 = this.getElementById("overflow2");
		slider2 = this.getElementById("slider2");
		
		winResize();
		$(document).bind({resize: winResize, scroll: winScroll});
	
		winResize2();
		$(document).bind({resize: winResize2, scroll: winScroll2});
	
	});
	
	function winResize(){
		ovf.style.top = slider.offsetHeight + "px";
	}

	function winScroll(){
		var op = 1.7 - (window.pageYOffset / slider.offsetHeight);
		slider.style.opacity = op;
	}
	
	function winResize2(){
		ovf2.style.top = slider2.offsetHeight + "px";
	}

	function winScroll2(){
		var op = 4 - (window.pageYOffset / slider2.offsetHeight);
		slider2.style.opacity = op;
	}
	
	});
	
</script>


	<div id="all">
		<div id="top">
			<div id="topContent">
				<h1>우리가 만들어가는 또하나의 세상</h1>
				<h1> Create My Web Page 
					<span style="color:red;">Y</span>
					o
					<span style="color:yellow;">L</span>
					!.Com</h1>
			</div>
			<div id="topContent2">
				<div id="content1">소개말</div>
				<div id="content2">개발자</div>
			</div>
		
		</div>
	</div>
	

		
		<div class="slider" id="slider">
			<h1> ' 다르다 '</h1>
		</div>
		
		
		<div class="overflow" id="overflow">
			<div class="content">
				<div id="title">
					<h1>
						직접 만드는 <br>
						홈페이지는 <br>
						<strong>' 무조건 '</strong> <br>
						다릅니다 <br>
					</h1>
				</div>
				<div id="sub">
					<h4>
						<p>Yol(은)는 간편함과 기술력을 바탕으로 누구나 무료로 전문적이고 멋진</p> 
						<p>홈페이지를 제작할 수 있는 방법을 제시합니다. 창의성과 코딩의 한계를</p>
						<p>뛰어넘어 자유롭게 스스로를 표현하고 온라인 비즈니스를 운영하세요.</p>
						<p>직접 만든 홈페이지는 사람들이 알아봅니다!</p>
						<p>글로벌 사용자 기반, 오픈 SDK 및 우주최강의 홈페이지 디자인 기능은 </p>
						<p>YoL.com 만의 독특한 온라인 생태계를 조성합니다. 개발사, 웹디자이너 등</p>
						<p>다양한 YoL 생태계 구성원들 역시 YoL과의 파트너십을 통해</p> 
						<p>앱 및 서비스시장에 진출해 있습니다.</p>
					</h4>
				</div>
			</div>
		</div>
		
		<div style="widht: 100%; position:absolute"></div>

		<div class="slider" id="slider2">
			<h1> ' 노력한다 '</h1>
		</div>
		
		
		<div class="overflow" id="overflow2">
			<div class="content">
				<div id="sub2">
					<h4>
					<p>어린이부터 전문 웹디자이너까지, 홈페이지 제작 아이디어만 있다면준비 끝입니다.</p>
					<p>드로그-앤-드롭 방식의 간편한 HTML5 에디터로 언제든지 자기만의 개성 및 브랜드를 표현하세요.</p>
					<p>YoL 디자이너팀이 제작한 최고 수준의 홈페이지 템플릿을 </p>
					<p>비롯, 최상급 호스팅, 다양한 YoL 서비스 등 완벽한 홈페이지 구축을 위한 모든 것을 대부분 						무료로 제공합니다.<p>
					<p> 보다 앞서가는 서비스를 위해 일부 프리미엄 서비스는 유료로 제공되지만,</p>
					<p>YoL의 궁극적인 목표는 모든 회원분들의 만족입니다. 홈페이지 제작, 이보다 쉬울 수 없습니다!</p>
					</h4>
				</div>
				<div id="title2">
					<h1>
						회원이 만족하는<br>
						홈페이지를 위해<br>
						<strong>' 노력 '</strong> 합니다!
					</h1>
				</div>
			</div>
		</div>
		
		
		<div class="slider" id="slider3">
			<h1> ' 주목한다 '</h1>
		</div>
		
	
	

