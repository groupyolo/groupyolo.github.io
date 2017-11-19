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
 		z-index:30;
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
 		cursor: pointer;
 		font-size: 1.4em;
 		text-align: center;
 		vertical-align: middle;
 		font-weight: bolder;
 		color:white;
 		background-color: green;
 		margin:0px auto;
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
 		z-index: 10;
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
 		background-color: white;
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
 		z-index: 100;
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
 		opacity:0;
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
 		width:700px;
 		height:400px;
 		z-index:3;
 		margin:0px auto;
 		background:rgba(#fff,0.7);
 	}
 	.background-box{
 		width:100%;
 		height:100%;
 		position: absolute;
 		z-index: 1;
 	}
 	.background div{
 		float:left;
 	}
 	.background div:after{
 		content:"";
 		clear:both;
 	}
 	.innerBox{
 		width:300px;
 		height:300px;
 		/* border:1px solid gray; */
 		opacity:1;
 		background-color: yellow;
 		z-index: 7;
 		margin:20px;
 	}
 	
 	
 	 </style>
<!--  <div class="createArea">  -->
 	<div class="screen-filter"></div>
 	<div class="block block-header">
 	header
 	</div>

 	<div id="block1" class="block block-body" >
		<div class="background">
			<!-- <div class="background-box">
			</div> -->
			
			<div class="innerBox innerBox1">
				
			</div>
			
			<div class="innerBox innerBox2">
				<p>무뭐뭐1</p>
				<p>무뭐뭐2</p>
				<p>무뭐뭐3</p>
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
	
	  <!-- form enctype="multipart/form-data" 을 꼭 적어줘야 함 -->
<%--     <form class="form-horizontal" method="post" action="<c:url value='/re/add'/>" enctype="multipart/form-data">
        <!-- input type="file" 이라고 꼭 저어줘야 함 -->
        <input type="file" class="form-control1" id="uploadFile" name="uploadFile" style="border:0px solid black;"/>
        
        <button type="submit" class="btn btn-default">등록</button>
        <button type="reset" class="btn btn-default">취소</button>
    </form>
 --%>

	
	
	<div class='optionMenu'></div>
	
	
    
 <script>
 	var divNum="";
 	var select="";
 	var menuSelect="1";
 	
 	/* 왼쪽 div 추가메뉴 */
 	
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
 	
 	/* 커서가 가면 메뉴 보이기  */
	function addShow(){
		$(".block-body").click(function(){
			if(select!=""){
			 	$(".default-btn").hide();
				$(".hover-add").remove();
			 	
				$("<ul class='hover-add'><li class='hover-add-child'><div class='add' onclick='addDIV(this);'>+</div></li></ul>").insertBefore(this);
				$("<ul class='hover-add'><li class='hover-add-child'><div class='add' onclick='addDIV(this);'>+</div></li></ul>").insertAfter(this);
				
			 	$(this).find(".default-btn").show(); 
			 	$(".optionMenu").html("");
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
 		var temp="";
 		selectDIVon();
 		/* 추 후 템플릿 별로 만들기 */
 		
 		
 		/* 테스트용 div 번호 */
 			
 		/* 템플리 공통부분 */
 		temp+="<div class='block block-body'"+"id='block"+($(".block-body").length+1)+"'>";
 		temp+="</div>";
 		$(temp).insertBefore($(obj).parent().parent());
 		console.log(temp);
 		
 		/* 템플릿 본문 */
 		temp="<div class='background'>";
 		temp+="<div class='innerBox innerBox1'>";
 		temp+="</div>";
 		temp+="<div class='innerBox innerBox2'>";
 		temp+="<p>무뭐뭐1</p>";
 		temp+="<p>무뭐뭐2</p>";
 		temp+="<p>무뭐뭐3</p>";
 		temp+="</div>";
 		temp+="</div>"; 		
 		console.log(temp);
		
 		$("#block"+($(".block-body").length)).append(temp);
 		
 		
 		/* 템플릿 공통 부분 */
 		$("#block"+$(".block-body").length).append("<div class='default-btn option-btn' title='옵션' onclick='optionClick(this);'><i class='fa fa-cog' aria-hidden='true'></i></div>");
 		$("#block"+$(".block-body").length).append("<div class='default-btn move-btn' title='이동' onclick='moveClick(this);'><i class='fa fa-scissors' aria-hidden='true'></i></div>");
 		$("#block"+$(".block-body").length).append("<div class='default-btn copy-btn' title='복사' onclick='copyClick(this);'>	<i class='fa fa-files-o' aria-hidden='true'></i></div>");
 		$("#block"+$(".block-body").length).append("<div class='default-btn del-btn' title='삭제' onclick='delClick(this);'>	<i class='fa fa-eraser' aria-hidden='true'></i></div>");
 		
 		addShow();
 		select="";
 		$(".optionMenu").html("");
 	
	}
	//옵션버튼클릭시 나오는 메뉴
	function optionMenu(obj){
		
		var target = $(obj).parent().attr("id");
		
		var temp= "";
		temp+="<div class='optionMenu-box'>";
		temp+="<div class='optionMenu-box-top'>상세메뉴</div>";
		temp+="<div class='optionMenu-box-title' onclick='menuTitleClick(this)'>여백설정</div>";
		temp+="<div class='optionMenu-box-content'>";
		temp+="<div><span>좌측여백</span><input type='range' min='0' max='100' value='0' direction='left' onchange='paddingChange(this,"+target+");'></div>";
		temp+="<div><span>우측여백</span><input type='range' min='0' max='100' value='0' direction='right' onchange='paddingChange(this,"+target+");'></div>";
		temp+="<div><span>상측여백</span><input type='range' min='0' max='100' value='0' direction='top' onchange='paddingChange(this,"+target+");'></div>";
		temp+="<div><span>하측여백</span><input type='range' min='0' max='100' value='0' direction='bottom' onchange='paddingChange(this,"+target+");'></div>";
		temp+="</div>";
		temp+="<div class='optionMenu-box-title' onclick='menuTitleClick(this)'>";
		temp+="<div>배경설정</div>";
		temp+="</div>";
		temp+="<div class='optionMenu-box-content'>";
		temp+="<div><span>투명도</span><input type='range' min='-1' max='0' step='0.01' value='-1' onchange='opacityChange(this,"+target+");'></div>";
		temp+="<div><span>이미지 선택</span><input type='button' onclick='boxImageChange(this,"+target+");'></div>";
		temp+="<div><span>색 선택</span><input type='color' onchange='boxColorChange(this,"+target+");'></div>";
		temp+="</div>";
		temp+="<div class='optionMenu-box-title' onclick='menuTitleClick(this)'>";
		temp+="<div>노출 박스 설정</div>";
		temp+="</div>";
		temp+="<div class='optionMenu-box-content'>";
		temp+="<div>";
		temp+="<input type='text' id='box-parallel' placeholder='가로'>";
		temp+="</div>";
		temp+="<div>";
		temp+="<input type='text' id='box-vertical' placeholder='세로'>";
		temp+="</div>";
		temp+="<div>";
		temp+="<input type='button' class='btn btn-info' value='설정' onclick='innerBoxNumChange(this,"+target+");'>";
		temp+="</div>";
		temp+="</div>";
		temp+="</div>";
		
		return temp;
		
	}
	/* 메뉴버튼 */
	function optionClick(obj){
		event.cancelBubble = true;
		event.stopPropagation();
		var temp =$(obj).parent();
		var menu = optionMenu(obj);
		
		if(select==""){
			select=temp;
			$(".optionMenu").append(menu);
			$(".optionMenu").css("left",event.clientX-215+"px");
			$(".optionMenu").css("top",event.clientY+"px");
			console.log(select);
		}else if(select==temp){
			select="";
			$(".optionMenu").html("");
			console.log(select);
		}
		
	}
	/* 이동버튼 */
	function moveClick(obj){
		
		var temp =$(obj).parent();
		
		
	}
	/* 삭제버튼 */
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
	/* 복사버튼 */
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
	
	/* 메뉴에서 제목 클릭 시 본문 나오기 */
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
	/* 패딩 */
	function paddingChange(obj,target){
		event.cancelBubble = true;
		event.stopPropagation();
		
		var direction = $(obj).attr("direction");
		var value =  $(obj).val();
		$(target).css("padding-"+direction,value+"px");
		
	}
	/* 전체 배경 opacity */
	function opacityChange(obj,target){
		event.cancelBubble = true;
		event.stopPropagation();
		
		var value =  $(obj).val();
		var temp = $(target).css("background-color").substr(4,15);
		var arr = temp.split(", ");
		
		for(var i in arr){
			arr[i]=arr[i].replace("(","");
			arr[i]=arr[i].replace(")","");
			arr[i]=parseInt(arr[i]);
		}
		$(target).css("background","rgba("+arr[0]+","+arr[1]+","+arr[2]+","+value*-1+")");
	}
	
	/* 전체 배경 이미지 */
	function boxImageChange(obj,target){
		event.cancelBubble = true;
		event.stopPropagation();
		
		
		
	
	}
	/* 전체 배경 색 */
	function boxColorChange(obj,target){
		event.cancelBubble = true;
		event.stopPropagation();
		
		var value =  $(obj).val();
		
		var arr = sixteenToten(value);
		$(target).css("background","rgba("+arr[0]+","+arr[1]+","+arr[2]+","+"1)");
		
	}
	/* 16진수 색 rgb로 변환 */
	function sixteenToten(num){
		var arr=[];
		
		arr.push(parseInt("0x"+num.substr(1,2)).toString(10));
		arr.push(parseInt("0x"+num.substr(3,2)).toString(10));
		arr.push(parseInt("0x"+num.substr(5,2)).toString(10));
		
		return arr;
	}
	
	
	/* 내부 박스 개수 변경 */
	function innerBoxNumChange(obj,target){
		event.cancelBubble = true;
		event.stopPropagation();
		
		var x = $("#box-parallel").val();		
		var y = $("#box-vertical").val();

		console.log($(target).find("background"));
		console.log((parseInt($(target).find(".background").css("height"))+40)*y+"px");
		var appendBox = x*y-$(".innerBox").length;
		
		if(appendBox>0){
			
			for(var i=0;i<appendBox;i++){
				$(".background").append("<div class='innerBox innerBox"+($(".innerBox").length+1)+"'></div>");
			}
		}
		//특정 블록과 특정 박스로 한정지어야 함.
		$(target).find(".innerBox").css("width",parseInt($(".background").css("width"))/x-40+"px");
		$(target).find(".background").css("height",(parseInt($(target).find(".innerBox").css("height"))+40)*y+"px");
	}
	/*  
	function innerBoxColorChange(obj,target){
		event.cancelBubble = true;
		event.stopPropagation();
		
		
		var value =  $(obj).val();
		
		//$(target).find(".innerImage").css("background-color",value);
		var arr = sixteenToten(value);
		$(target).find(".innerImage").css("background","rgba("+arr[0]+","+arr[1]+","+arr[2]+","+"0)");
	}
	 */
	

	
	
	
/*                 함수 선언부     */	
	
	
	
	addShow();
	
	
 	
	
	
	
	
	
/*                 로딩 함수 호출부  */	
	
 		
 	
	
 	
 	
 </script>
 		
    
    