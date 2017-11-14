<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

	
<style>
#startbtn {
	padding: 20px 60px;
	color: gray;
	background-color: white;
	border-radius:10px;
	font-size: 1.2em;
	font-weight: bolder;
	
}
.content1 {
	background-color: white;
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
	background-color: #fbfbfb;
	width: 100%;
	margin: 0px auto;
	padding-top: 50px;
	text-align: center;
	z-index: 2;
}

.content3 {
	background-color: white;
	padding-top: 50px;
	z-index: 2;
	font-size: 2em;
	text-align: center;
	padding-bottom:50px;
}
.content3 p{
	font-size: 15px;
}

.faqbox{
	width: 1000px;
	margin: 0px auto;
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
	margin-top:100px;
	text-align: left;
}

.table .faqTitle td:hover{
	color:navy;
}
.func{
	margin:20px auto;
	
	border-bottom: 1px solid #b7b4b4;
	width:1200px;
	/* min-height:700px; */
	overflow: auto;
	vertical-align: middle;
}	

.func .func-boxes, .func .func-title{
	float:left;
} 
.func .func-boxes:after{
	content: "";
	clear: both;
}

.func-boxes{
	width:700px;
	/* border:1px solid yellow; */
	margin-top:50px;
	margin-bottom:100px;
}


.func-boxes .func-box{
	float:left;
}
.func-title{
	font-size: 1.9em;
	font-weight: bolder;
	/* border:1px solid black; */
	width:300px;
	/* height:100px; */
	/* margin-left:120px; */
	margin-right:80px;
	margin-top:80px;
	
}

.func-box{
	width:300px;
	height:200px;
	/* border:1px solid blue; */
	margin-left:40px;
	margin-top:20px;
}
.func-box-title{
	font-size: 1.5em;
	font-weight: bold;
	margin-bottom:20px;
	text-align: left;
	cursor:pointer;
}
.func-box-content{
	font-size: 1.2em;
	/* margin:10px; */
	text-align: left;
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
		<!-- 단락하나 -->
		<div>
			<h1>YOL! 기능소개</h1>
			<p>YOL!의 최신기능을 확인하세요.</p>
		</div>
		
	</div>
	
	<div class="content3">
		<div>
			<h1>무엇이 궁금하세요?</h1>
			<p>신속, 정확한 답변으로 당신의 궁금증을 해결하세요!</p>
		</div>
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
				<a href="${pageContext.request.contextPath }/main/faqView.action"  style="color: gray;"><input type="button" value="자세히 보기" class="btn btn-info"></a>
			</p>
			
		</div>
		</div><!-- faqbox -->
	</div><!-- content2 -->
	
	<script>
	$(".faqContent").hide();
	var check="";
	
	$(".faqTitle").click(function(){
		if(check!=this){
			$(".faqContent").hide();
			$(".faqTitle").css("color","black");
			$(this).next().show();
			$(this).css("color","navy");
			check=this;
			
		}else{
			$(this).next().hide();
			$(".faqTitle").css("color","black");
		}
		
	});
	
	$("table").each(function(index,item){
		
		if($(item).find("td").length==0){
			$(item).remove();
		}
		
	});
	
	
	$(".content2").append("<div class='func1 func'></div><div class='func2 func'></div><div class='func3 func'></div>");
	var n=[0,0,0]
	
	<c:forEach items="${incList}" var="dto" varStatus="sta">
		
		var temp = "";
		//console.log(n[0]);
		if(n[${dto.bigTitleNum}-1]==0){
			
			temp+='<div class="func-title">'+"${dto.bigTitle}";
			temp+='</div>';
			temp+='<div class="func-boxes">';
			temp+='<div class="func-box">';
			temp+='<div class="func-box-title">'+"${dto.title}";
			temp+='</div>';
			temp+='<div class="func-box-content">'+"${dto.cont}";
			temp+='</div>';
			temp+='</div>';
			temp+='</div>';
			
			$(".func"+"${dto.bigTitleNum}").append(temp);
			n[${dto.bigTitleNum}-1]+=1;
			
		}else{
			temp+='<div class="func-box">';
			temp+='<div class="func-box-title">'+"${dto.title}";
			temp+='</div>';
			temp+='<div class="func-box-content">'+"${dto.cont}";
			temp+='</div>';
			temp+='</div>';
			
			$(".func"+"${dto.bigTitleNum}"+" .func-boxes").append(temp);
			n[${dto.bigTitleNum}-1]+=1;
		}
		
			
		
	

	
	</c:forEach>	
	
	$(".func-box-title").click(function(){
		location.href="${pageContext.request.contextPath }/main/login.action";
	});
	
	</script>
	
	
	
	
	
	