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
		    $(".textbox").draggable();
		    $(".textbox").resizable();
	 
	 $(".innerbox").dblclick(function(e) {
			var childs = $(".textbox").children();
			$(".textbox").children()[0].tagName;
			 alert(childs[5].tagName); 
			for(var i = 0; i<childs.length; i++) {
				/* alert( $(childs[i]).val() == ""); */
				/* alert($(childs[i]).children().size()); */
				/* alert($(childs[i]) != $(p)); */
				/* if( $(childs[i]).val() == "" && $(childs[i]).children().size() == 0) {
					 /*$(childs[i]).remove();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
				} */
				var name = childs[i].tagName();
				alert(name);
			}
		    /* alert(e.pageX + " , " + e.pageY);  */
		    var btn = 1; 
		     var x = e.pageX - 370;
		     var y = e.pageY - 70;
		  
		    var p = "<div class='textbox ui-draggable ui-draggable-handle ui-resizable'  style=' position:absolute; left: "+x+"px; top:"+y+"px; float:right; z-index:100; border:1px solid red;' ><p id='" + "p"+zin+ "' contenteditable='true' class='text'  style='min-width:5px; min-height:23px; margin:0px;'></p></div>";
		 /*    $(".textbox").draggable(); */
		    $(".innerbox").append(p);
			$("#p"+zin).focus();		
		/* 	  $(".textbox").click(function() {
				 $(".textbox").draggable();
				 $(".textbox").attr("contenteditable","true");
			 });  */
		    zin++;
			/* 	alert(childs.size()); */
	 });
 });


 
</script>
</head>
<body>
	
	<div class="contents1">
		<div class="row">
			<div class="warp">
				<div class="innerbox">
					<div class="imgbox">
						<img src="${pageContext.request.contextPath}/images/contentimg.JPG" alt="" />
					</div>
					<div class="textbox" contenteditable="true"><!-- contenteditable="true" -->
						<div class="text1" >
						<!-- 	<h3  contenteditable="true"> 
								Integer eleifen sem elit,
								<br />
								Lorem ipsum dolor sit amet consectetur 
							</h3> -->
						</div>
						<div class="text2" >
							<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem necessitatibus ad laboriosam cum soluta ipsum at beatae in eius dicta quia rem vitae molestias illum nisi eveniet ut eaque praesentium?
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum reiciendis rem laboriosam deleniti atque facere assumenda natus praesentium iure nobis laudantium voluptas culpa alias numquam distinctio. Sequi neque aut dolor!
							</p>
						</div> 
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	
	
<!-- 	
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
	</div> -->


<div class='ui-draggable ui-draggable-handle ui-resizable' contenteditable='true' style=' position:absolute; /* left: "+x+"px; top:"+y+"px;  */float:right; z-index:100; border:1px solid red;' >
<p id='' class='text'  style=' min-width:5px; min-height:23px;'></p>
</div>


</body>
</html>