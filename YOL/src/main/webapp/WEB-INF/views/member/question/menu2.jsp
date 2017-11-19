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
		background-color: black;
		width: 100%;
		height: 100px;
	}
	
	.menuBox {
		margin-left: 15%;
		margin-right: 10%;
	}
	
	.menuLogo {
		width: 30%;
		margin: 0px auto;
		float: left;
		padding: 1%;
	}
	
	.menuLogo span {
		font-weight: bold;
		font-size: 3em;
	}
	
	.menuSel {
		width: 60%;
		display: inline-block;
		margin: 0px auto;
		margin-left: 10%;
		text-align: center;
		float: right;
		
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
		padding-top: 4%;
		color: white;
	}
	
	.menuUl li:hover {
		color: cornflowerblue;
		font-weight: bold;
	}
	
</style>

</head>
<body>


	<!-- 메뉴바 1 -->
	
	<div class="menu">
		<div class="menuBox">
			
			<div class="menuLogo">
				<span>제목</span>
			</div>
			
			<div class="menuSel">
				<ul class="menuUl">
					<li>Menu1 </li><span> | </span>
					<li>Menu2 </li><span> | </span>
					<li>Menu3 </li><span> | </span>
					<li>Menu4 </li><span> | </span>
					<li>Menu5 </li>
				</ul>
			</div>
		</div>
	</div>


</body>
</html>