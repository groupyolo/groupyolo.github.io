<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/bootstrap.css"> 
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,300italic,700,700italic">
<link rel="stylesheet" href="//cdn.rawgit.com/necolas/normalize.css/master/normalize.css">
<link rel="stylesheet" href="//cdn.rawgit.com/milligram/milligram/master/dist/milligram.min.css">


<script src="js/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/exporting.js"></script>
<style>
	
	.menu {
		width: 100%;
		height: 100%;
	}
	
	.menuLogo {
		width: 100%;
		height: 100%;
		margin: 0px auto;
		text-align: center;
		background-color: white;
		padding: 0.5%;
	}
	
	.menuLogo .logoTitle {
		color: black;
		font-weight: bold;
		font-size: 3em;
	}
	
	.menuLogo .logoFooter {
		color: #aaa;
		font-size: 1.5em;
		font-weight: bold;
	}
	
	.menuBox {
		background-color: #aaa;
		widht: 100%;
		height: 100%;
	}
	
	 .menuSel {
		width: 60%;
		display: inline-block;
		margin: 0px auto;
		margin-left: 20%;
		margin-right: 20%;
		text-align: center;
	}
	
	 .menuUl {
	 	width: 100%;
		list-style : none;
		display: inline-block;
		margin: 0px auto;
	}
	
	.menuUl li {
		display: inline-block;
		padding: 3%;
		padding-top: 3%;
		color: white;
		font-size: 1.5em;
		font-weight: bold;
		margin: 0px auto;
	}
	
	.menuUl li:hover {
		background-color: red;
	}  
	
</style>

</head>
<body>


	<!-- 메뉴바 1 -->
	
	<div class="menu">
		
		<div class="menuLogo">
			<span class="logoTitle">제목</span>
			<p class="logoFooter"> footer입니다.</p>
		</div>
		
		<div class="menuBox">
			
			
			<div class="menuSel">
				<ul class="menuUl">
					<li>Menu1 </li>
					<li>Menu2 </li>
					<li>Menu3 </li>
					<li>Menu4 </li>
					<li>Menu5 </li>
				</ul>
			</div>
		</div>
	</div>


</body>
</html>