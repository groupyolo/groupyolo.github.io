<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <style>
 	.check{
 		background-color: black;
 		border: 5px solid black;
 	}
 	.move{
 		position:relative;
 		width:50px;
 		height:50px;
 		top:-25px;
 		margin:0px auto;
 		border-radius: 100%;
 		background-color: yellow;
 		z-index: 3;
 		cursor: pointer;
 		display:none;
 	}
 	
 	.default:hover{
 		cursor:pointer;
 	}
 	
 	.default{
 		
 		width:100%;
 		height:100%;
 		background-color: blue;
 		z-index:2;
 	}
 	.point{
 		position: absolute;
 		width:500px;
 		height:500px;
 		z-index:1;
 		cursor:crosshair;
 	}
 	.move:focus{
 		cursor:move;
 	}
 	
 	
 </style>
    
    <div class="point">
    <div class="default" selectCheck="false">
    </div>
    <div class="move">
    </div>
    </div>
    
 <script>
 
 	
 	
 	var downCount=0;
 	$(".default").mousedown(function(){
 
 		if($(this).attr("selectCheck")=="false"){
 			$(this).parent().addClass("check");
 			$(".move").show();
 			$(this).attr("selectCheck","true");
 		}else{
 			
 			$(this).parent().removeClass("check");
 			$(".move").hide();
 			$(this).attr("selectCheck","false");
	 			
 		}
 	});
 	
 		
 	var moveCheck=false;
 	$(".move").mousedown(function(){
 		if(event.button==0){
	 		moveCheck=true;
 			
 		}
 	});

 	$(".move").mousemove(function(){
 		
 		if(moveCheck){
	 		$(this).parent().css("top",event.clientX+"px")
	 		$(this).parent().css("left",$(this).parent()+"px")
 			console.log($(this).parent().css("top"));
 			
 		}
 		
 	});
 	
 	$(document).mouseup(function(){
 		if(event.button==0){
	 		moveCheck=false;
 			
 		}
 	});
 	
 	
 	
 </script>
    
    