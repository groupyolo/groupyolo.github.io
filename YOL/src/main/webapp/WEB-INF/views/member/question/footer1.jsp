<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<style>

#footer {
	background-color: black;
	width: 100%;
	height: 250px;
	border:1px dashed purple;
	padding-top: 20px;
}

#footmenu{
	width: 1000px;
	border: 1px dashed blue;	
	margin: 0px auto;
}
#menulist{
	width: 700px;
	margin: 0px auto;	
}

#menulist div span{
	font-size: 1em;
	font-weight: bold;
	
}

#menulist ul{
	list-style: none;
	margin:0px; padding:0px;
	padding-top:5px;
	
}
#menulist ul li{
	margin-top:3px;
	color: white;
}

#footmenu #menulist div{
	display:inline-block;
	vertical-align: top;
	margin-right:5%;
	border: 1px dashed red;
	width:120px;
}

#footmenu #menulist div:nth-child(4){
	margin-right:0px;
}


#companyinfo{
	text-align: center;
	
}

#companyinfo p{
	vertical-align: middle;	
}
	


#footer #Fbox {
   margin-top: 30px;
}

#Fbox{
	border-top: 1px solid lightgrey;	
	margin-top: 15px;
}

#tblF {
   width: 30%;
   height: 7%;
   padding-top : 20px;
   margin-left: 20%;
   text-align: center;
   
}

#tblF a {
   text-decoration: none;
   color: black;
}

#fot {
   list-style: none;
   display: inline-block;
   margin: 0px auto;
   background-color: lightgrey;
}

#footer #fot li {
   display: inline-block;
   margin: 20px;
   font-size: 0.9em;
}

#footer #fotBox {
   width: 100%;
   text-align:center;
}

</style>

<footer id="footer">
		
		<div id="footmenu">
			<div id="menulist">
			<div><span>서비스</span>
				<ul>
					<li><a href="">템플릿</a></li>
					<li><a href="">요금제</a></li>
				</ul>
			</div>
			<div><span>회사소개</span>
			</div>
			<div><span>고객지원</span>
				<ul>
					<li><a href="">문의하기</a></li>
					<li><a href="">서포트센터</a></li>
					<li><a href="">공지</a></li>
					
				</ul>
			</div>
			<div><span>개인정보 취급방침</span></div>
			</div>
		</div>		
	

		<div class='footer_logo clear'>
			<div id='companyinfo'>
				<img src="${pageContext.request.contextPath }/css/images/logoorange.png" alt=""  style="width:20px; height:20px;" />
				<span style="font-weight: bold;">YOL.COM</span>
				<span>132, Teheran-ro, Gangnam-gu, Seoul, Republic of Korea</span>
				<span>Registration No. : 000-00-00000</span>
				<span>Representative : JungAh Park</span>
				<span>+82-070-0000-0000</span>
				<address style="font-weight: bold;">Copyright©YOL.COM All Rights Reserved.</address>
			</div>
			
		</div>
	
	</footer>