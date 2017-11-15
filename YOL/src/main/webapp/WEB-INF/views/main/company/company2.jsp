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
		height: 500px;
	}

	#topContent {
		margin: 0px auto;
		margin-top: 130px;
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
	
	
	#topContent2 #content1:hover {
		border-radius: 100px 0px 0px 100px;
		color: white;
		background-color: cornflowerblue;
	}
	
	#topContent2 #content2 {
		border-radius: 0px 100px 100px 0px;
		color: white;
		background-color: cornflowerblue;
	}

	.content {
		width: 100%;
		height: 100%;
		display:block;
		background-color: white;
		padding-top: 100px;
		padding-bottom: 100px;
	}

	#contentText {
		font-size: 60pt;
		text-align:center;
		color: black;
	}
	
	#creator {
		height: 100%;
		margin-left: 150px;
		margin-right: 150px;
	}
	
	.creator {
		width: 250px;
		height: 400px;
		display: inline-block;
		margin-left: 80px;
		margin-top: 100px;
	}
	
	.creatorImg {
		width: 250px;
		height: 300px;
		display: inline-block;
		background-size: contain;
		background-repeat: no-repeat;
		cursor:pointer;
	}
	
	.creatorImt:hover {
		opacity: 0.5;
	}
	
	.creatorText {
		font-size: 16pt;
		color: black;
	}
	
	.creatorText footer{
		/* color: white; */
	}

</style>
<script>

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
				<div id="content1" onclick="location.href='${pageContext.request.contextPath}/main/company.action'">소개말</div>
				<div id="content2"onclick="location.href='#'">개발자</div>
			</div>
		</div>
	</div>
	
	<div class="content">
		<div id="contentText">
			- YoL의 개발자를 소개합니다
		</div>
		<div id="creator">
			<div class="creator">
				<div class="creatorImg" style="background: url('${pageContext.request.contextPath}/images/hj.jpg')">
				</div>
				<div class="creatorText">
					<blockquote>
						<p><strong>박정아</strong> Park Jung A</p>
						<footer>공동설립자 및 CEO</footer>
					</blockquote>
				</div>
			</div>
			<div class="creator">
				<div class="creatorImg" style="background: url('${pageContext.request.contextPath}/images/hj.jpg')">
				</div>
				<div class="creatorText">
					<blockquote>
						<p><strong>이건기</strong> Lee Gune Gi</p>
						<footer>공동설립자</footer>
					</blockquote>
				</div>
			</div>
			<div class="creator">
				<div class="creatorImg" style="background: url('${pageContext.request.contextPath}/images/hj.jpg')">
				</div>
				<div class="creatorText">
					<blockquote>
						<p><strong>김기하</strong> Kim Gi Ha</p>
						<footer>공동설립자</footer>
					</blockquote>
				</div>
			</div>
			<div class="creator">
				<div class="creatorImg" style="background: url('${pageContext.request.contextPath}/images/hj.jpg')">
				</div>
				<div class="creatorText">
					<blockquote>
						<p><strong>김선영</strong> Kim Sun Young</p>
						<footer>공동설립자</footer>
					</blockquote>
				</div>
			</div>
			<div class="creator">
				<div class="creatorImg" style="background: url('${pageContext.request.contextPath}/images/hj.jpg')">
				</div>
				<div class="creatorText">
					<blockquote>
						<p><strong>공남혁</strong> Gong Nam Hyuk</p>
						<footer>공동설립자</footer>
					</blockquote>
				</div>
			</div>
			<div class="creator">
				<div class="creatorImg" style="background: url('${pageContext.request.contextPath}/images/hj.jpg')">
				</div>
				<div class="creatorText">
					<blockquote>
						<p><strong>김희준</strong> Kim Hee June</p>
						<footer>공동설립자</footer>
					</blockquote>
				</div>
			</div>
		</div>
	
	</div>