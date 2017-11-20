<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/section.css"/>
<script src="${pageContext.request.contextPath }/js/jquery-1.12.4.js"></script>
<script src="//cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
<script>
 $(document).ready(function() {    
	 
	 $(".textbox").dblclick(function(e) {
			var childs = $(".textbox").children();
			alert(childs.size());
			for(var i = 0; i<childs.length; i++) {
				/* alert( $(childs[i]).val() == ""); */
				/* alert($(childs[i]).children().size()); */
				alert($(childs[i]) != $(p));
				if( $(childs[i]) != $("p")&&$(childs[i]).val() == "" && $(childs[i]).children().size() == 0) {
					/* $(childs[i]).remove(); */
				}
			}
		    /* alert(e.pageX + " , " + e.pageY);  */
		    var btn = 1; 
		     var x = e.pageX - 370;
		     var y = e.pageY - 70;
		    
		    var p = "<p class='textp' contenteditable='true' style='border:1px solid black; position:absolute; left: "+x+"px; top:"+y+"px;'></p>";
		    
		    $(".textbox").append(p);
			$("p").focus();		  
			
				alert(childs.size());
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
					<div class="textbox"><!-- contenteditable="true" -->
						<div class="text1" >
						<!-- 	<h3  contenteditable="true"> 
								Integer eleifen sem elit,
								<br />
								Lorem ipsum dolor sit amet consectetur 
							</h3> -->
						</div>
						<div class="text2" >
							<p contenteditable="true">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem necessitatibus ad laboriosam cum soluta ipsum at beatae in eius dicta quia rem vitae molestias illum nisi eveniet ut eaque praesentium?
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum reiciendis rem laboriosam deleniti atque facere assumenda natus praesentium iure nobis laudantium voluptas culpa alias numquam distinctio. Sequi neque aut dolor!
							</p>
						</div> 
					</div>
				</div>
			</div>
		</div>
</div>




</body>
</html>