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
		height: 400px;
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
	
	#topContent2 div:hover {
		border-radius: 100px;
		color: white;
		background-color: cornflowerblue;
	}
	
	#c1 {
		width: 1000px;
		height: 300px;
		display:block;
		background-color: #eee;
	}
	
	#c1 #c1b1 {
		margin-left: 100px;
		width: 30%;
		display: inline-block;
		
	}
	
	#c1 #c1b2 {
		width: 40%;
		margin-left: 100px;
		display: inline-block;
	}
	#c1 #c1b2 p {
		display: inline-block;
	}
	
	
	

	
	#topContent:nth-child(2) { margin-left: 40px; margin-top: 30px;}
</style>
<script>
	
	$(document).ready(function() {
		
		
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
	
		<div id="c1">
			<div id="c1b1">
				<h1>
					직접 만드는 <br>
					홈페이지는 <br>
					'무조건' <br>
					다릅니다 <br>
				</h1>
			</div>
			<div id="c1b2">
				<h4>
					<p>Wix는 간편함과 기술력을 바탕으로 누구나 무료로 전문적이고 멋진</p> 
					<p>홈페이지를 제작할 수 있는 방법을 제시합니다. 창의성과 코딩의 한계를</p>
					<p>뛰어넘어 자유롭게 스스로를 표현하고 온라인 비즈니스를 운영하세요.</p>
					<p>직접 만든 홈페이지는 사람들이 알아봅니다!</p>
					<p>글로벌 사용자 기반, 오픈 SDK 및 우주최강의 홈페이지 디자인 기능은 </p>
					<p>YoL.com만의 독특한 온라인 생태계를 조성합니다. 개발사, 웹디자이너 등</p>
					<p>다양한 YoL 생태계 구성원들 역시 YoL과의 파트너십을 통해</p> 
					<p>앱 및 서비스시장에 진출해 있습니다.</p>
				</h4>
			</div>
		</div>
		
	
	

