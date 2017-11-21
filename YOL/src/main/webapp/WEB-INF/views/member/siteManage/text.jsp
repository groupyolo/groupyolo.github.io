<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/section.css"/>
<script src="${pageContext.request.contextPath }/js/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="//cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
<script>
 $(document).ready(function() {    
		    var zin = 1;
		   /*  $(".textbox").draggable();
		    $(".textbox").resizable(); */
		    
		    $('#textbox').click(function(e) {
		    	var cls = e.target.getAttribute('class');   // class도 가능
	             alert(cls);
		        // id가 없는 element는 null이 아니라 공백이다.
		        if(cls = "text"){
		        	var id = e.target.getAttribute('id');
		        	console.log("id=" + id);
		        	/* $('id').attr("contenteditable","true"); */
		        	$(".textbox p").attr("contenteditable","true");
		        } else if (cls = "textbox"){
		        	var id1 = e.target.getAttribute('id');
		        	console.log("id1=" + id1);
		        }
		   });

		    
		    
	 
	 $(".innerbox").dblclick(function(e) {
	
		 var cls = e.target.getAttribute('class');   // class도 가능
	        // id가 없는 element는 null이 아니라 공백이다.
	        if(cls != "text"){
		 	var btn = 1; 
		     var x = e.pageX - 370;
		     var y = e.pageY - 70;
		  
		    var p = "<div id='textbox' class='textbox' draggable='false' style='padding: 15px; position:absolute; left: "+x+"px; top:"+y+"px; float:right; z-index:100; border:1px solid red;' ><p id='p"+zin+ "' contenteditable='true' class='text'  style='min-width:5px; min-height:23px; z-index:110; border:1px solid black; margin:0px;'></p></div>"; 
		    
		 /*    $(".textbox").draggable(); */
		 
		    $(".innerbox").append(p);
			$("#p"+zin).focus();		
		 	
	 	/* 	$(".textbox").click(function() {
				 $(".textbox").draggable();
				 $(".textbox p").attr("contenteditable","false");
			 }); */
			 
		    zin++;
			/* 	alert(childs.size()); */
	        }
		 
	 });
 });
 




 
</script>
</head>
<body>
	
				<div class="innerbox"  style ="width: 100%; background-color:#eee;">
					<div class="imgbox">
						<img src="${pageContext.request.contextPath}/images/contentimg.JPG" alt="" />
					</div>
					<div class="textbox" ><!-- contenteditable="true" -->
						<div class="text1" contenteditable="true"  style="border: 1px solid red; ">
							<p  style=' min-width:5px; min-height:23px;'></p>
						</div>
						<div class="text2" contenteditable="true" style="border: 1px solid blue;">
							<p  style=' min-width:5px; min-height:23px;'></p>
						</div> 
					</div>
				</div>


<div class='ui-draggable ui-draggable-handle ui-resizable' contenteditable='true' style=' position:absolute; /* left: "+x+"px; top:"+y+"px;  */float:right; z-index:100; border:1px solid red;' >
<p id='' class='text'  style=' min-width:5px; min-height:23px;'></p>
</div>



	<div class="textbox1">
		<div class="row">
		<div class="innerbox">
			<div class="textbox" contenteditable="true">
				<div class="text1">01</div>
				<div class="text2">STRATEGY</div>
				<div class="text3"><hr /></div>
				<div class="text4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis tempora excepturi praesentium vitae molestias quas deserunt sunt optio itaque eum aliquid ab. Odit libero reiciendis ab aperiam reprehenderit ipsa commodi!</div>
			</div>
			<div class="textbox" contenteditable="true">
					<div class="text1" contenteditable="true">02</div>
				<div class="text2" contenteditable="true">DESIGN</div>
				<div class="text3" contenteditable="true"><hr /></div>
				<div class="text4" >Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis tempora excepturi praesentium vitae molestias quas deserunt sunt optio itaque eum aliquid ab. Odit libero reiciendis ab aperiam reprehenderit ipsa commodi!</div>
			</div>
			<div class="textbox" contenteditable="true">
					<div class="text1">03</div>
				<div class="text2">DEVELOP</div>
				<div class="text3"><hr /></div>
				<div class="text4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis tempora excepturi praesentium vitae molestias quas deserunt sunt optio itaque eum aliquid ab. Odit libero reiciendis ab aperiam reprehenderit ipsa commodi!</div>
			</div>
			<div class="textbox" contenteditable="true">
					<div class="text1">04</div>
				<div class="text2">MARKETING</div>
				<div class="text3"><hr /></div>
				<div class="text4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis tempora excepturi praesentium vitae molestias quas deserunt sunt optio itaque eum aliquid ab. Odit libero reiciendis ab aperiam reprehenderit ipsa commodi!</div>
				</div>
			</div>
		</div>
	</div> 


</body>
</html>