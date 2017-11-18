<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <style>
 
 	.check{
 		width:calc(100% + 30px);
 		height:calc(100% + 30px);
 		
 		background-color:green;
 		border:5px solid black;
 	}
 	
 	/* .createArea{
 		
 		position:absolute;
	    top: 0;
	    left: 0;
	    right: 0;
	    bottom: 0;
	    width: auto;
	    height: auto;
	    padding: 0;
	    overflow: auto;
	    overflow-x: hidden;
 	} */
 	.section-check{
 		/* display:none;
 		position:relative; */
 	}
 	
 	/*  */
 	.hover-add{
  		position:absolute;
 		width:100%;
 		height:30px;
 		z-index:5;
 		/* border:1px solid black; */
 		margin-top:-15px; 
 		padding:0px;
 		/* display:none; */
 	
 	}
 	.hover-add-child{
 		width:100%;
 		list-style: none;
 		background-color: transparent;
 		display: inline-block;
 	}
 	.hover-add-child:after{
 		content:"";
 		clear: both;
 		border-top:2px solid green;
 		width:auto;
 		display:block;
    	margin-top: -17px;
   		overflow: hidden;
 	}
 	/* 블록 추가 버튼 설정 */
 	.add{
 	/* 	position:absolute; */
 		width:30px;
 		height:30px;
 		border-radius: 100%;
 		z-index:6;
 		cursor: pointer;
 		font-size: 1.4em;
 		text-align: center;
 		vertical-align: middle;
 		font-weight: bolder;
 		color:white;
 		background-color: green;
 		margin:0px auto;
 	}
 	/* 블록 위버튼 */
 	.add-up{
/*  	left:900px;
 		top:-20px; */
 	}
 	/* 블록 아래버튼 */
 	.add-down{
/*  	left:900px;
 		bottom:-20px; */
 		
 	}
 	/* 테스트용 */
 	.point{
 		/* left:200px;
 		top:200px;
 		position: absolute; */
 		width:100px;
 		height:100px;
 		z-index:1;
 	
 		background-color: blue;
 	}
 	/* 기본 블록설정  */
 	.block-body{
 		width:100%;
 		/* height:300px; */
 		position:relative;
 		background-color: #eee;
 		 /* 나중에 제거 */
 		/* border:1px dashed red; */
 		/* margin-top:5px;
 		margin-bottom:5px; */
 	}
 	.block-header{
 		width:100%;
 		height:100px;
 		background-color: orange;
 		position:relative;
 	}
 	.block-footer{
 		width:100%;
 		height:100px;
 		background-color: orange;
 		position:relative;
 	}

 	/* 블럭 버튼 기본설정 */
 	.default-btn{
 		position:absolute;
 		width:30px;
 		height:30px;
 		border-radius: 100%;
 		z-index: 3;
 		cursor: pointer;
 		display:none;
 		font-size: 1em;
 		text-align: center;
 		vertical-align: middle;
 		font-weight: bolder;
 		top:20px;
 		right:20px;
 		border:2px solid gray;
 		text-align: center;
 		vertical-align: middle;
 		padding-top:3px;
 	}
 	/* 블럭 옵션 버튼 */
 	.option-btn{
 		top:20px;
 		right:160px;
 		/* background-color: red; */
 	}
 	/* 블럭 이동 버튼 */
 	.move-btn{
 		top:20px;
 		right:120px;
 		/* background-color: green; */
 	}
 	/* 블럭 복사 버튼 */
 	.copy-btn{
 		top:20px;
 		right:80px;
 		/* background-color: blue; */
 	}
 	/* 블럭 삭제 버튼 */
 	.del-btn{
 		top:20px;
 		right:40px;
 		/* background-color: gray; */
 	}
 	/* 우측 블럭 추가메뉴 */
 	.selectDIV{
 		position: fixed;
 		width:500px;
 		height:100%;
 		left:-600px;
 		top:0px;
 		padding-top:50px;
 		z-index: 5;
 		/* background-color: green; */
 	}
 	.selectDIVContent{
 		float:left;
 	}
 	/* 블럭 추가메뉴 카테고리 */
 	.DIVCategory{
 		width:200px;
 		height:100%;
 		background-color: green;
 	}
 	/* 블럭 카테고리 항목  */
 	.DIVCategoryList{
 		width:180px;
 		height:30px;
 		background-color: white;
		cursor:pointer;
		margin:10px auto;
 	}
 	/* 템플릿 모음  */
 	.DIVTemplates{
 		width:300px;
 		height:100%;
 		background-color: navy;
 	}
 	/* 개별 템플릿 */
 	.DIVTemplate{
 		width:200px;
 		height:150px;
 		background-color: white;
 		margin: 10px auto;
 		cursor:pointer;
 		
 	}
 	/* 블록 추가메뉴 종료버튼 */
 	.DIVExit{
 		position:absolute;
 		width:50px;
 		height:50px;
 		background-color: gray;
 		top:50px;
 		right:-50px;
 		font-size: 2em;
 		text-align: center;
 		vertical-align: middle;
 		font-weight: bolder;
 		cursor:pointer;
 	}
 	/* 블록 추가메뉴 실행 시 화면 클릭방지 */
 	.screen-filter{
 		width:100%;
 		height:100%;
 		position:fixed;
 		z-index: 4;
 		background-color: gray;
 		display: none;
 		opacity:.5;
 	}
 	/* 블럭 옵션 클릭 시 나오는 메뉴 */
 	.optionMenu{
 		position: fixed;
 		left:700px;
 		top:300px;
 	}
 	.optionMenu-box{
 		box-shadow: 1px 1px 1px 1px;
 		border:1px solid gray;;
 		
 	}
 	.optionMenu-box-top{
 		background-color: #4B9B9E;
 		color:white;
 		padding-left:10px;
 		font-weight: bold;
 	}	
 	.optionMenu-box-title{
 		padding-left:10px;
 		background-color:white;
 		vertical-align: middle;
 		font-weight: bolder;	
 		cursor:pointer;
 		height:20px;
 		width:200px;
 		border-bottom:1px solid gray;
 		font-size: 12px;
 	}
 	.optionMenu-box-content{
 		background-color:#E8F2FC;
 		vertical-align: middle;
 		font-weight: bolder;
 		cursor:pointer;
 		/* height:50px; */
 		padding-left:10px;
 		padding-right:10px;
 		font-size: 11px;
 		display:none;
 	}
 	
 	/* 테스트용 DIV */
 	.background{
 		width:100%;
 		
 	}
 	.backgroundImage{
 		width:100%;
 		height:600px;
 	}
 	.backgroundImage div{
 		float:left;
 	}
 	
 	.innerImage{
 		width:500px;
 		height:300px;
 		border:1px solid gray;
 	}
 	.innerText{
 		width:400px;
 		height:500px;
 	}
 	
 	 </style>
<!--  <div class="createArea">  -->
 	<div class="screen-filter"></div>
 	<div class="block block-header">
 	header
 	</div>

 	<div id="block1" class="block block-body" >
		<div class="background">
			<div class="backgroundImage">
				<div class="innerImage">
					
				</div>
				<div class="innerText">
					<p>무뭐뭐1</p>
					<p>무뭐뭐2</p>
					<p>무뭐뭐3</p>
				</div>
			
			
			
			</div>
		</div>
	   	
	   	<div class="default-btn option-btn" title="옵션" onclick="optionClick(this);">
	   	<i class="fa fa-cog" aria-hidden="true"></i>
	   	</div>
	   	<div class="default-btn move-btn" title="이동" onclick="moveClick(this);">
	   	<i class="fa fa-scissors" aria-hidden="true"></i>
	   	</div>
	   	<div class="default-btn copy-btn" title="복사" onclick="copyClick(this);">
	   	<i class="fa fa-files-o" aria-hidden="true"></i>
	   	</div>
	   	<div class="default-btn del-btn" title="삭제" onclick="delClick(this);">
	   	<i class="fa fa-eraser" aria-hidden="true"></i>
	   	</div>
    </div>
    
    <div class="block block-footer">

 	footer
 	</div>

 
	<div class="selectDIV">
		<div class="DIVCategory selectDIVContent">
			<div class="DIVCategoryList" onclick="">
			
			</div>
			<div class="DIVCategoryList" onclick="">
			
			</div>
		</div>
		<div class="DIVTemplates selectDIVContent">
			<div class="DIVTemplate" onclick="selectDIVCheck(this);">
			
			</div>
			<div class="DIVTemplate">
			
			</div>
			<div class="DIVTemplate" >
			
			</div>
			
			<%-- <c:forEach items="" var="">
				<div class="DIVTemplate">
					
				</div>
			</c:forEach> --%>
		</div>
		<div class="DIVExit" onclick="selectDIVoff();">
			X
		</div>
	</div>
	
	<div class='optionMenu'></div>
	<!-- 메뉴바 테스트용-->
	<!-- <div class='optionMenu' id='optMenu'>
		<div class='optionMenu-box'>
			<div class='optionMenu-box-top'>상세메뉴</div>
			
			<div class='optionMenu-box-title' onclick='menuTitleClick(this)'>여백설정</div>
			
			<div class='optionMenu-box-content'>
				<div><span>좌측여백</span><input type="range" min="0" max="100" value="0" direction="left" onchange="paddingChange(this);"></div>
				<div><span>우측여백</span><input type="range" min="0" max="100" value="0" direction="right" onchange="paddingChange(this);"></div>
				<div><span>상측여백</span><input type="range" min="0" max="100" value="0" direction="top" onchange="paddingChange(this);"></div>
				<div><span>하측여백</span><input type="range" min="0" max="100" value="0" direction="bottom" onchange="paddingChange(this);"></div>
			</div>
				
			<div class='optionMenu-box-title' onclick='menuTitleClick(divis)'>
				<div>배경설정</div>
			</div>
			
			<div class='optionMenu-box-content'>
				<div>배경내용</div>
			</div>
			
			<div class='optionMenu-box-title' onclick='menuTitleClick(divis)'>
				<div>이미지설정</div>
			</div>
			
			<div class='optionMenu-box-content'>
				<div>이미지내용</div>
			</div>
		</div>
	</div> -->
	

		
<!-- </div> -->
    
 <script>
 	var divNum="";
 	var mnc="copy"; /* 테스트용 카피 나중에 클래스에따라서 변동 있을 것  */
 	var select="";
 	var menuSelect="1";
 	
 	function selectDIVon(){
 		$(".selectDIV").css("left","0px");
 		$(".screen-filter").show();
 	}
 	function selectDIVoff(){
 		$(".selectDIV").css("left","-600px");
 		$(".screen-filter").hide();
 		
 	}

 	function selectDIVCheck(obj){
 		divNum=$(obj).css("id");
 		//템플릿을 구분할 수 있는 값.
 		selectDIVoff();
 	}
 	
 	
	function addShow(){
		$(".block-body").click(function(){
			if(select!=""){
				console.log("dd");
			 	$(".default-btn").hide();
				$(".hover-add").remove();
			 	
				$("<ul class='hover-add'><li class='hover-add-child'><div class='add' onclick='addDIV(this);'>+</div></li></ul>").insertBefore(this);
				$("<ul class='hover-add'><li class='hover-add-child'><div class='add' onclick='addDIV(this);'>+</div></li></ul>").insertAfter(this);
				
			 	$(this).find(".default-btn").show(); 
				$("#").css("left","300px");
				select="";
			}
		});
		$(".block-body").mouseenter(function(){
			if(select==""){
				
				$(".default-btn").hide();
				$(".hover-add").remove();
				
				$(this).find(".default-btn").show();
				$("<ul class='hover-add'><li class='hover-add-child'><div class='add' onclick='addDIV(this);'>+</div></li></ul>").insertBefore(this);
				$("<ul class='hover-add'><li class='hover-add-child'><div class='add' onclick='addDIV(this);'>+</div></li></ul>").insertAfter(this);
				
				
		 		
			}
		});
		
	}	

	
	function addDIV(obj){
 		
 		selectDIVon();
 		
 		/* 테스트용 div 번호 */
 			
 		$("<div class='block block-body' "+"id='block"+($(".block-body").length+1)+"'></div>").insertBefore($(obj).parent().parent());
 		
 		/* 템플릿 본문 */
 
 		console.log("#block"+$(".block-body"));
 		$("#block"+$(".block-body").length).append("<div class='default-btn option-btn' title='옵션' onclick='optionClick(this);'><i class='fa fa-cog' aria-hidden='true'></i></div>");
 		$("#block"+$(".block-body").length).append("<div class='default-btn move-btn' title='이동' onclick='moveClick(this);'><i class='fa fa-scissors' aria-hidden='true'></i></div>");
 		$("#block"+$(".block-body").length).append("<div class='default-btn copy-btn' title='복사' onclick='copyClick(this);'>	<i class='fa fa-files-o' aria-hidden='true'></i></div>");
 		$("#block"+$(".block-body").length).append("<div class='default-btn del-btn' title='삭제' onclick='delClick(this);'>	<i class='fa fa-eraser' aria-hidden='true'></i></div>");
 		
 		addShow();
 		select="";
		$("#").css("left","300px");
 	
	}
	
	function optionMenu(obj){
		
		var target = $(obj).parent().attr("id");
		
		var temp= "";
		temp+="<div class='optionMenu-box'><div class='optionMenu-box-top'>상세메뉴</div><div class='optionMenu-box-title' onclick='menuTitleClick(this)'>여백설정</div><div class='optionMenu-box-content'>				<div><span>좌측여백</span><input type='range' min='0' max='100' value='0' direction='left' onchange='paddingChange(this,"+target+");'></div>				<div><span>우측여백</span><input type='range' min='0' max='100' value='0' direction='right' onchange='paddingChange(this,"+target+");'></div>				<div><span>상측여백</span><input type='range' min='0' max='100' value='0' direction='top' onchange='paddingChange(this,"+target+");'></div>				<div><span>하측여백</span><input type='range' min='0' max='100' value='0' direction='bottom' onchange='paddingChange(this,"+target+");'></div>			</div>			<div class='optionMenu-box-title' onclick='menuTitleClick(this)'>				<div>배경설정</div>			</div><div class='optionMenu-box-content'>				<div>배경내용</div>		</div><div class='optionMenu-box-title' onclick='menuTitleClick(this)'>				<div>이미지설정</div>	</div><div class='optionMenu-box-content'>				<div>이미지내용</div>	</div>		</div>";
		
		return temp;
		
	}
	function optionClick(obj){
		event.cancelBubble = true;
		event.stopPropagation();
		var temp =$(obj).parent();
		var menu = optionMenu(obj);
		
		if(select==""){
			select=obj;
			$(".optionMenu").append(menu);
			$(".optionMenu").css("left",event.clientX-210+"px");
			$(".optionMenu").css("top",event.clientY+"px");
			
		}else if(select==obj){
			//console.log("ccc");
			select="";
			//$("#optMenu").css("left","300px");
			$(".optionMenu").html("");
		}
		
	}
	
	function moveClick(obj){
		
		var temp =$(obj).parent();
		
		
	}
	function delClick(obj){
		
		var answer = confirm("정말 삭제하시겠습니까?");
		
		if(answer){
			$(".block-body").each(function(index,item){
				if(parseInt($(item).attr("id").replace("block",""))>parseInt($(obj).parent().attr("id").replace("block",""))){
					
					$(item).attr("id","block"+(parseInt($(item).attr("id").replace("block",""))-1));
					
				}
				
				
			});
			$(obj).parent().remove();
		}
	}
	function copyClick(obj){
		var data = $(obj).parent()[0];
		var answer = confirm("복사하시겠습니까?");
		
		if(answer){
			
			var nodeCopy = data.cloneNode(true);
			nodeCopy.id="block"+($(".block-body").length+1);
			$(nodeCopy).insertAfter($(data).next());
			addShow();
		}
	}
	
	function menuTitleClick(obj){
		event.cancelBubble=true;
		event.stopPropagation();
		if(menuSelect==obj){
			$(obj).next().hide();
			menuSelect="";
			
		}else{
			$(".menuContent").hide();
			$(obj).next().show();
			menuSelect=obj;
			
		}
		
		
	}
	
	function paddingChange(obj,target){
		event.cancelBubble = true;
		event.stopPropagation();
		
		var direction = $(obj).attr("direction");
		var value =  $(obj).val();
		console.log(target);
		
		$(target).css("padding-"+direction,value+"px");
		
	}
	
	
	
	/* 드래그 구현  */
	
	function dragstart_handler(obj) {
		//event.preventDefault();
		
/* 		var img = new Image(); 
		event.dataTransfer.setDragImage(img, 10, 10); */
		
 		event.dataTransfer.setData("text/html", event.target.id);
 		//event.cancelBubble = true;
	}

	function dragover_handler(obj) {
		event.preventDefault();
		
		if(mnc=="copy"){
			event.dataTransfer.dropEffect = "copy";
			
		}else if(mnc=="move"){
			event.dataTransfer.dropEffect = "move";
		}
		
		//event.cancelBubble = true;
	}
	function drop_handler(obj) {
		
		//event.preventDefault();
		 // 대상의 id를 가져와 대상 DOM에 움직인 요소를 추가합니다.
		var data = event.dataTransfer.getData("text/html");
		console.log(data);
		if(event.target.id=="mainCore" && !$(event.target).hasClass("block-body")) {
			
			if(mnc=="copy"){
				var nodeCopy = document.getElementById(data).cloneNode(true);
				nodeCopy.id="block"+($(".block").length+1);
				event.target.appendChild(nodeCopy);
				
			}else if(mnc=="move"){
				console.log(event.target);
				console.log(document.getElementById(data));
				
				event.target.appendChild(document.getElementById(data));
				
			}
			
		}else{
			
		}
		 
		//event.cancelBubble = true;
	}
	
	function returnFalse(){
		
		return false;
	}
	
	
	
	
/*                 함수 선언부     */	
	
	
	
	addShow();
	
	
 	
	
	
	
	
	
/*                 로딩 함수 호출부  */	
	
 		
 	
	
 	
 	
 </script>
 		
    
    