<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <style>
 	.check{
 		
 		background-color:green;
 	}
 	.move{
 		/* position:absolute; */
 		width:50px;
 		height:50px;
 		margin:0px auto;
 		border-radius: 100%;
 		background-color: yellow;
 		z-index: 3;
 		cursor: pointer;
 		display:none;
 		/* transform:translateY(-15px); */
 	}
 	
 	.default:hover{
 		cursor:pointer;
 	}
 	
 	.default{
 		
 		width:calc(100% - 10px);
 		height:calc(100% - 10px);
 		background-color: blue;
 		z-index:2;
 		margin:5px;	
 		
 	}
 	.point{
 		/* margin:20px auto; */
 		position: absolute;
 		width:300px;
 		height:300px;
 		z-index:1;
 		cursor:crosshair;
 		padding:1px;
 		
 		
 	}
 	.move:focus{
 		cursor:move;
 	}
 	.test{
 		border:1px solid red;
 		width:500px;
 		height:500px;
 	}
 	.size{
 		border:3px solid red;
 	}
 </style>
 
 	<div class="test" ondrop="drop_handler(event);" ondragover="dragover_handler(event);">
	   
	    <div class="point" draggable="true" ondragstart="dragstart_handler(event);">
	    <div class="default" selectCheck="false">
	    </div>
	    </div>
    </div>
    <div class="test" ondrop="drop_handler(event);" ondragover="dragover_handler(event);">
    </div>
    <div class="test" ondrop="drop_handler(event);" ondragover="dragover_handler(event);">
    
    </div>
 <script>
 
 	
	var moveCheck=false;
	var sizeCheck=false;
	var sizeX=0;
	var sizeY=0;
 	var downCount=0;
 	$(".default").mouseup(function(){
 		
 		if($(this).attr("selectCheck")=="false"){
 			$(this).parent().addClass("check");
 			$(".move").show();
 			$(this).attr("selectCheck","true");
 		}else{
 			
 			$(this).parent().removeClass("check");
 			$(".move").hide();
 			$(this).attr("selectCheck","false");
	 			
 		}
 		moveCheck=!moveCheck;
 	}); 
 	
 	$(".point").mousedown(function(){
 		if(event.button==0 && $(this).hasClass("check")){
 			sizeX=$(this).css("width");
 			sizeY=$(this).css("height");
 			sizeCheck=true;
 		
 			$(this).css("width",event.clientX-parseInt($(this).css("left"))+"px");
 			$(this).css("height",event.clientY-parseInt($(this).css("top"))+"px");
 		}
 		
 		
 	});
 	$(".point").mouseenter(function(){
 		console.log("bbb");
 		if(sizeCheck){
 			$(this).css("width",event.clientX-parseInt($(this).css("left"))+"px");
 			$(this).css("height",event.clientY-parseInt($(this).css("top"))+"px");
 		}
 		
 		
 	});
 	$(".point").mouseleave(function(){
 		console.log("ccc");
 		if(sizeCheck){
 			$(this).css("width",event.clientX-parseInt($(this).css("left"))+"px");
 			$(this).css("height",event.clientY-parseInt($(this).css("top"))+"px");
 		}
 		
 		
 	});
 	
 	$(".point").mouseup(function(){
 		event.preventDefault();
 		console.log("aaa");
 		if(sizeCheck){
 			$(this).css("width",event.clientX-parseInt($(this).css("left"))+"px");
 			$(this).css("height",event.clientY-parseInt($(this).css("top"))+"px");
 			
 			sizeCheck=false;
 		}
 		
 		
 	});
 	
 	function dragstart_handler(ev) {
 		 ev.preventDefault();
 		if(moveCheck){
	 		ev.dataTransfer.setData("text/html", ev.target.className);
 			
 		}
 		
 	}
 	function dragover_handler(ev) {
 		 ev.preventDefault();
 		 // dropEffect를 move로 설정.
 		 ev.dataTransfer.dropEffect = "move"
 	}
	function drop_handler(ev) {
		
		ev.preventDefault();
		 // 대상의 id를 가져와 대상 DOM에 움직인 요소를 추가합니다.
		 var data = ev.dataTransfer.getData("text/html");
		// console.log(data);
		if(moveCheck){
			ev.target.appendChild(document.getElementsByClassName(data)[0]);
	
		}
		 //moveCheck=!moveCheck;
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
	
 	
 </script>
 		
    
    