<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

	
<style>
#startbtn {
	padding: 20px 60px;
	color: black;
	background-color: white;
	border-radius:10px;
}
.content1 {
	background-color: #eee;
	width: 100%;
	margin: 0px auto;
	padding-top: 50px;
	text-align: center;
	z-index: 2;
}

#movie {
	position: absolute;
	width: 100%; 
	background-position: center;
	z-index: -1;
	
}

#movieText {
	position:relative;
	padding-top: 100px;
	width: 100%;
	height: 100%;
	margin: 0px auto;
	text-align: center;
	color: white;
	z-index: 2;
	
}

#video{
	width:723px;
	height:485px;
	margin:30px;
}

.wrapper{
	height:400px;
	overflow: hidden;
	z-index: 1;
}


.content2 {
	/* background-color: white; */
	width: 1000px;
	margin: 0px auto;
	padding-top: 10px;
	z-index: 2;
	font-size: 2em;
}

.filter {
	position: absolute;
	width: 100%;
	height: 400px;
	background-color: #424449;
	opacity: 0.6;
}
.faqTitle{
		cursor:pointer;
}	
.table .faqContent td{
	padding-left:30px;
	
}	

.table{
	margin-top:20px;
}

.table .faqTitle td:hover{
	color:red;
}
	
</style>

<script>

	$(document).ready(function() {
		
		$(".navivar li").mouseenter(function() {
			
			if($(this).text() != $("#join").text()) { 
				
				$(this).css("background-color","#46505d");
				$(this).children().css("color","white");
			
			}
			
		}).mouseleave(function() {
			
			if($(this).text() != $("#join").text()) { 
			
				$(this).css("background-color","transparent");
				$(this).children().css("color","black");
			}
		});
		
		
		$(".panel-heading").click(function() {
			$(this).css("color","cornflowerblue");
			$(this).children().css("text-decoration","none");
			$(".collapsed").collpase();
			
			
		});
		
		
		$(".var li a").click(function(event) {
			
			/* event.preventDefault(); */
			
			console.log($(this).attr("id"));
			
			 if($(this).attr("id") == "li2") {

				var offset = $(".content1").offset().top;
				
				$("html, body").animate({ 
					scrollTop: offset}, offset+60);
	
			} else if($(this).attr("id") == "li3") {

				var offset = $(".content2").offset().top;
				
				$("html, body").animate({ 
					scrollTop: offset}, offset);
				
			} else if($(this).attr("id") == "li4") {

				var offset = $("#footer").offset().top;
				
				$("html, body").animate({ 
					scrollTop: offset}, offset);
			}

			
		});
		
	
		
		
		
	});

</script>

	
		<div class="middle">
			<div class="wrapper">
				<video id="movie" preload="auto" autoplay="" loop="" poster="//i.addblock.net/intro/movie_bg.jpg">
					<source src="//i.addblock.net/movie_15s.webm" type="video/webm">
					<source src="//i.addblock.net/movie_15s.mp4" type="video/mp4">
				</video>
				<div class="filter"></div>
				<div id="movieText">
					<h1>당신이 원하는 당신만의 멋진 홈페이지를 만들어보세요!</h1>
					<p>누구나 쉽고 멋진 웹페이지를 만들 수 있습니다.</p>
					<div style="margin-top: 50px;">
						<a href="${pageContext.request.contextPath }/main/login.action" id="startbtn">시작하기</a>
					</div>
				</div>
			</div>


		</div>
	<div class="content1">
		<div>
			<h1>포트폴리오, 홈페이지, 블로그 등 자신만의 페이지를 만드세요!</h1>
			<p>마우스와 같단한 키보드 조작만으로 아름다운 페이지 제작 가능</p>
		</div>
		<div>
			<iframe src="https://www.youtube.com/embed/kVbmnLY8xLI"
				frameborder="0" gesture="media" allowfullscreen id="video"></iframe>
		</div>
	</div>

	<div class="content2">
		<div class="faqbox">
		
		<table id="tbl" class="table">
		<c:forEach items="${faqList }" var="dto">
			<tr class="faqTitle">
					<td>
						${dto.title }			
					</td>
			</tr>
			<tr class="faqContent">
				<td>
					${dto.fcontent }
				</td>
			</tr>
		</c:forEach>
		</table>
			
		<div style="margin-top: 50px; text-align:center;">
			<p>
				<a href="${pageContext.request.contextPath }/main/faqView.action"  style="color: #aaa;"><h3>더보기 ></h3></a>
			</p>
			
		</div>
		</div><!-- faqbox -->
	</div><!-- content2 -->
	
	<script>
	var check=true;
	$(".faqContent").hide();
	
	$(".faqTitle").click(function(){
		if(check){
			$(this).next().show();
			check=!check;
		}else{
			$(this).next().hide();
			check=!check;
		}
		
	});
	
	$("table").each(function(index,item){
		
		if($(item).find("td").length==0){
			$(item).remove();
		}
		
	});
	
	</script>
	
	
	
	
	
	