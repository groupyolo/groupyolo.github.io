<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

	#all {
		width: 100%;
		height: 100%;
	}

	#top {
		width: 100%;
		height: 700px;
	}

	#topContent {
		margin: 0px auto;
		margin-top: 270px;
		text-align: center;
	}
	
	#topContent:nth-child(2) { 
		margin-left: 40px; 
		margin-top: 30px;
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
		width: 246.9px;
		height: 60px;
		text-align: center;
		cursor: pointer;
		padding-top: 10px;
		collapse: collapse;
	}
	
	
	#topContent2 #content1 {
		border-radius: 100px 0px 0px 100px;
		color: white;
		background-color: cornflowerblue;
	}
	
	#topContent2 #content2:hover {
		border-radius: 0px 100px 100px 0px;
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
		margin-left: 250px;
		font-size: 40pt;	
		width: 350px;
		float: left;
		text-align: center;
	}
	
	.content #sub {
		width: 600px;
		margin-left: 220px;
		margin-top: 80px;
		display: inline-block;
		float: right;
		margin-right: 300px;
	}
	.content p {
		display: inline-block;
	}
	
	.content #sub2 {
		margin-top: 100px;
		margin-left: 220px;
		width: 600px;
		display: inline-block;
	}
	
	.content #title2 {
		width: 350px;
		margin-right: 300px;
		margin-top: 140px;
		float: right;
		text-align: center;
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
	
	.content #title strong, .content #title2 strong {
		font-size: 50pt;
		color: cornflowerblue;
	}
	
	.content strong {
		color: cornflowerblue;
	}

	
</style>
<script>
	
	var ovf, slider, ovf2, slider2, ovf3, slider3;
	
	$(document).ready(function() {
		
		
		
		
	
	$(function(){
		
		ovf = this.getElementById("overflow");
		slider = this.getElementById("slider");
		ovf2 = this.getElementById("overflow2");
		slider2 = this.getElementById("slider2");
		ovf3 = this.getElementById("overflow3");
		slider3 = this.getElementById("slider3");
		
		winResize();
		$(document).bind({resize: winResize, scroll: winScroll});
	
		winResize2();
		$(document).bind({resize: winResize2, scroll: winScroll2});
		
		winResize3();
		$(document).bind({resize: winResize3, scroll: winScroll3});
	
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
	
	function winResize3(){
		ovf3.style.top = slider3.offsetHeight + "px";
	}

	function winScroll3(){
		var op = 6 - (window.pageYOffset / slider3.offsetHeight);
		slider3.style.opacity = op;
	}
	
	});
	
</script>


	<div id="all">
		<div id="top">
			<div id="topContent">
				<h1>우리가 만들어가는 또 하나의 세상</h1>
				<h1> Create My Web Page 
					<span style="color:red;">Y</span>
					o
					<span style="color:yellow;">L</span>
					!.Com</h1>
			</div>
			<div id="topContent2">
				<div id="content1" onclick="location.href='#'">소개말</div>
				<div id="content2"onclick="location.href='${pageContext.request.contextPath}/main/company2.action'">개발자</div>
			</div>
		</div>
	</div>
	

		
		<div class="slider" id="slider">
			<h1> ' 다르다 '</h1>
		</div>
		
		
		<div class="overflow" id="overflow">
			<div class="content">
				<div id="title">
						직접 만드는 <br>
						홈페이지는 <br>
						<strong>' 무조건 '</strong> <br>
						다릅니다 <br>
				</div>
				<div id="sub">
					<h3>
						<p>Yol(은)는 간편함과 기술력을 바탕으로 누구나 무료로 전문적이고 멋진
						홈페이지를 제작할 수 있는 방법을 제시합니다. 창의성과 코딩의 한계를
						뛰어넘어 자유롭게 스스로를 표현하고 온라인 비즈니스를 운영하세요.</p>
						
						<p>직접 만든 홈페이지는 사람들이 알아봅니다!</p>
						<p>글로벌 사용자 기반, 오픈 SDK 및 우주최강의 홈페이지 디자인 기능은 
						YoL.com 만의 독특한 온라인 생태계를 조성합니다. 개발사, 웹디자이너 등
						다양한 YoL 생태계 구성원들 역시 YoL과의 파트너십을 통해
						앱 및 서비스시장에 진출해 있습니다.</p>
					</h3>
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
					<h3>
					<p>어린이부터 전문 웹디자이너까지, 홈페이지 제작 아이디어만 있다면준비 끝입니다.<br>
					드로그-앤-드롭 방식의 간편한 HTML5 에디터로 언제든지 자기만의 개성 및 브랜드를 표현하세요.</p>
					<p>YoL 디자이너팀이 제작한 최고 수준의 홈페이지 템플릿을 
					비롯, 최상급 호스팅, 다양한 YoL 서비스 등 완벽한 홈페이지 구축을 위한 모든 것을 대부분 					무료로 제공합니다.
					보다 앞서가는 서비스를 위해 일부 프리미엄 서비스는 유료로 제공되지만,
					YoL의 궁극적인 목표는 모든 회원분들의 만족입니다. 홈페이지 제작, 이보다 쉬울 수 없습니다!</p>
					</h3>
				</div>
				<div id="title2">
					<h1>
						회원이 만족하는<br>
						홈페이지를 위해<br>
						<strong>' 노력 ' </strong> <br> 
						합니다 ! 
					</h1>
				</div>
			</div>
		</div>
		
		
		<div class="slider" id="slider3">
			<h1> ' 주목한다 '</h1>
		</div>
		
		<div class="overflow" id="overflow3">
			<div class="content">
				<div id="title">
					<h1>
						세계가 <br>
						<strong>' 주목하는 '</strong><br>
						글로벌 벤처기업<br>
						홈페이지는<br>
						<span style="color:red;">Y</span>
						o
						<span style="color:yellow;">L</span>
						!.Com
					</h1>
				</div>
				<div id="sub">
					<h3>
						<p>홈페이지 무료 제작의 원대한 꿈은<br>
						 <strong>이건기, 김기하, 박정아, 김선영, 공남혁, 김희준</strong><br>
						 여섯 사람의 비전과 노력으로 실현됐습니다.<p>
​
						<p>만약 누구나 쉽게 홈페이지를 제작할 수 있는 방법이 있다면 얼마나
						좋을까?' 창업을 준비하던 여섯 사람은 홈페이지를 준비하던 중 직접
						홈페이지를 제작하는 것이 얼마나 어려운 일인지 깨닫게 됩니다.
						하지만 좌절 대신, '손쉬운 홈페이지 제작 솔루션 개발'로 창업 방향을
						선회하고 연구와 실패를 거듭하게 됩니다. 그렇게 2017년, 코딩 및
						디자인 경험 없이 누구나 직접 제작할 수 있는 홈페이지 제작 도구
						YoL이 탄생했습니다!</p>
					</h3>
				</div>
			</div>
		</div>
		
	
	

