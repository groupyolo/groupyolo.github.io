<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script>

	$(document).ready(function() {
		
		$(".btn").click(function() {
			
			
			
		});
		
		
	});

</script>
<style>

	#header {
		text-align:center;
		margin-top: 250px;
	}

	#header2 {
		margin-top: 30px;
	}

	#content {
		width: 100%;
		height: 100%;
		border: 1px solid yellow;
	}
	
	
	#menu {
		border: 1px solid red;
		margin-top: 100px;
		margin-left: 10%;
		margin-right: 10%;
		text-align: center;
	}
	
	#menuname {
		text-align: left;
		width: 100%;
		
	}
	
	#menuname blockquote {
		font-size: 30pt;
		border: 1px solid black;
	
	}
	
	#menusel {
		margin: 0px auto;
	}

	.menuimg {
		display: inline-block;
		margin: 0px auto;
		margin-top: 80px;
		border: 1px solid cornflowerblue;
	}	
	

</style>


	<div id="header">
		<h1>템플릿에 대한 디자인을 직접 선택하여 사이트를 제작하세요!</h1>
		<div id="header2">
			<h4>
			<p>모든 템플릿들의 디자인 블럭들을 조합해보세요.</p>
			<p>원하는 스타일의 디자인을 선택하신 후, 필요 없는 블럭들은 삭제하고 다른 디자인의 블럭들을 추가하면서 자신만의 개성 있는 사이트를 만들어보세요!</p>
			</h4>
		</div>
	</div>
	
	
	<div id="content">
	
		<div id="menu">
			<div id="menuname">
				<blockquote>
					Menu
				</blockquote>
			</div>
			<div id="menusel">
				<div class="menuimg" style="width: 990px; height:201px; background: url('${pageContext.request.contextPath}/images/template1.png')"></div>
				<div class="menuimg" style="width: 990px; height:88px; background: url('${pageContext.request.contextPath}/images/template2.png')"></div>
				<div class="menuimg" style="width: 990px; height: 195px; background: url('${pageContext.request.contextPath}/images/template3.png')"></div>
			</div>
		</div>
		
		<div id="menu">
			<div id="menuname">
				<blockquote>
					Contact Us 
				</blockquote>
			</div>
			<div id="menusel">
				<div class="menuimg" style="width: 895px; height:717px; background: url('${pageContext.request.contextPath}/images/template4.png')"></div>
				<div class="menuimg" style="width: 895px; height:717px; background: url('${pageContext.request.contextPath}/images/template5.png')"></div>
				<div class="menuimg" style="width: 895px; height:717px; background: url('${pageContext.request.contextPath}/images/template6.png')"></div>
			</div>
		</div>
		
		<div id="menu">
			<div id="menuname">
				<blockquote>
					Form
				</blockquote>
			</div>
			<div id="menusel">
				<div class="menuimg" style="width: 1047px; height:430px; background: url('${pageContext.request.contextPath}/images/template7.png')"></div>
				<div class="menuimg" style="width: 1045px; height:469px; background: url('${pageContext.request.contextPath}/images/template8.png')"></div>
				<div class="menuimg" style="width: 1048px; height:287px; background: url('${pageContext.request.contextPath}/images/template9.png')"></div>
			</div>
		</div>
	
		<div id="menu">
			<div id="menuname">
				<blockquote>
					Form
				</blockquote>
			</div>
			<div id="menusel">
				<div class="menuimg" style="width: 1047px; height:430px; background: url('${pageContext.request.contextPath}/images/template7.png')"></div>
				<div class="menuimg" style="width: 1045px; height:469px; background: url('${pageContext.request.contextPath}/images/template8.png')"></div>
				<div class="menuimg" style="width: 1048px; height:287px; background: url('${pageContext.request.contextPath}/images/template9.png')"></div>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	


