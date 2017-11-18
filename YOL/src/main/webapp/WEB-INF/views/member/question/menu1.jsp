<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	
	
	.menu {
		width: 100%;
		height: 100%;
		box-shadow: 0 0 10px 1px black;
	}
	
	.menuBox {
		margin-left: 15%;
	}
	
	.menuLogo {
		width: 15%;
		margin: 0px auto;
		float: left;
		padding: 1%;
	}
	
	.menuLogo span {
		font-weight: bold;
		font-size: 2.5em;
	}
	
	.menuSel {
		width: 80%;
		display: inline-block;
		margin: 0px auto;
		margin-left: 10%;
		text-align: center;
	}
	
	.menuName {
		display: inline-block;
		margin: 0px auto;
		margin-left: 4%;
		padding: 3%;
		padding-left: 3%;
		padding-right: 3%;
		font-size: 1.4em;
		font-weight: bold;
		border-collapse: collapse;
		color: black;
		cursor: pointer;
	}
	
	.menuName:hover {
		background-color: black;
		color: white;
	}	
	
	.boxUl {
		background-color: black;
		widht: 10%;
		height: 10%;
	}
	
	.menuUl {
		list-style: none;
		width: 10%;
		display: none;
		margin: 0px auto;
	}
	
	.menuUl li {
		margin: 0px auto;
		margin-left: 4%;
		padding: 3%;
		font-weight: bold;
		font-size: 1.3em;
		color: white;
		text-align: center;
		cursor: pointer;
	}

</style>
<script>

	var show = true;
	
	$(document).ready(function() {

		$(".menuName").toggle(show);
		
		$(".menuName").mouseover(function() {
			
		
		show = true;
			
			$(".boxUl").show();
			
			if(show == true && $(".menuSel").children().eq(0).html() == $(this).html()) {
				$(".menuUl").hide();
				$("#Menu1").show("slideDown");
				
			} else if(show == true && $(".menuSel").children().eq(1).html() == $(this).html()) {
				$(".menuUl").hide();
				$("#Menu2").show("slideDown");
				
			} else if(show == true && $(".menuSel").children().eq(2).html() == $(this).html()) {
				$(".menuUl").hide();
				$("#Menu3").show("slideDown");
				
			} else if(show == true && $(".menuSel").children().eq(3).html() == $(this).html()) {
				$(".menuUl").hide();
				$("#Menu4").show("slideDown");

			} else if(show == true && $(".menuSel").children().eq(4).html() == $(this).html()) {
				$(".menuUl").hide();
				$("#Menu5").show("slideDown");
			}
			
				show = false;
				
		}).mouseleave(function() {

			$(".boxUl").mouseleave(function() {
				
				show = true;
				$(".boxUl").show("slideUp");
				$(".menuUl").hide();
				$(".boxUl").hide();
				
			});
			
		});
		
	});

</script>

</head>
<body>

	<!-- 메뉴바 1 -->
	
	<div class="menu">
		<div class="menuBox">
			
			<div class="menuLogo">
				<span>제목</span>
			</div>
			
			<div class="menuSel">
				<div class="menuName">Menu1</div>
				<div class="menuName">Menu2</div>
				<div class="menuName">Menu3</div>
				<div class="menuName">Menu4</div>
				<div class="menuName">Menu5</div>
			</div>	
			
		</div>
	</div>
	
	<div class="boxUl">
		<ul class="menuUl" id="Menu1">
			<li>menu1</li>
			<li>menu2</li>
			<li>menu3</li>
			<li>menu4</li>
			<li>menu5</li>
		</ul>
	</div>
	<div class="boxUl">
		<ul class="menuUl" id="Menu2">
			<li>menu1</li>
			<li>menu2</li>
			<li>menu3</li>
			<li>menu4</li>
			<li>menu5</li>
		</ul>
	</div>
	<div class="boxUl">
		<ul class="menuUl" id="Menu3">
			<li>menu1</li>
			<li>menu2</li>
			<li>menu3</li>
			<li>menu4</li>
			<li>menu5</li>
		</ul>
	</div>
	<div class="boxUl">
		<ul class="menuUl" id="Menu4">
			<li>menu1</li>
			<li>menu2</li>
			<li>menu3</li>
			<li>menu4</li>
			<li>menu5</li>
		</ul>
	</div>
	<div class="boxUl">
		<ul class="menuUl" id="Menu5">
			<li>menu1</li>
			<li>menu2</li>
			<li>menu3</li>
			<li>menu4</li>
			<li>menu5</li>
		</ul>
	</div>


</body>
</html>
