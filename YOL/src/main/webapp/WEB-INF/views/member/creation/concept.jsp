<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
%>
<style>

	.addc{
		background-color: blue;
	}

	.addw{
	
	}

	#roundborder{
		
		resize: both;
		border:1px solid black;
	}

	#round{
		width: 200px; height:200px;
		background-color: yellow;
		border-radius: 100%;
	}

	
	#round{
	resize: both;
	}
	
	
	.column {
    width: 100%;
    float: left;
    padding-bottom: 100px;
  }
  .portlet {
    margin: 0 1em 1em 0;
    padding: 0.3em;
    width: 100%;
  }
  .portlet-header {
    padding: 0.2em 0.3em;
    margin-bottom: 0.5em;
    position: relative;
  }
  .portlet-toggle {
    position: absolute;
    top: 50%;
    right: 0;
    margin-top: -8px;
  }
  .portlet-content {
    padding: 0.4em;
    width:100%;
  }
  .portlet-placeholder {
    border: 1px dotted black;
    margin: 0 1em 1em 0;
    height: 50px;
  }
	
	
</style>
<script src="//cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/section.css"/>
<script>
$(document).ready(function() {    

	var act =0;
	//추가할 속성을 선택한다.
	//첫번째 클릭시 toggle on
	var act =1;
	
	//어떤 버튼이 속성부여 버튼이 클릭이 되었는지 버튼의 id값을 whatbutton에 저장한다.
	var whatbutton;
	//$(this).attr('id');
		
	
	//act ==1이면 클릭된 상태니까 다음 클릭에서 클릭된 객체에 속성을 부여한다.
	//부여 속성은 whatbutton에 있다.
	
	if(act==0){
	//아무것도 하지 않는다		
		
		
	}else if(act==1){
	//속성 추가 클릭이 된 상태, 다음 클릭 시 해당 객체에 속성을 부여한다.
	//2번째 클릭 할 객체에 클래스 부여하고 
		
	
	//act =0으로 만든다. act가 1이라면 다음클릭하는 객체들에 계속 속성이 부여되어야 한다.
		act=0;
	}
	
	
	$("#round").draggable();
	$("#round").resizable(
			
	);
	
	$(".portlet").resizable(
			
	);
	$(".portlet").droppable(
			
	);
	
	CKEDITOR.replace( 'editor1' );
	
	}); 
	
	
	$( function() {
		
	    $( ".column" ).sortable({
	      connectWith: ".column",
	      handle: ".portlet-header",
	      cancel: ".portlet-toggle",
	      placeholder: "portlet-placeholder ui-corner-all"
	    });
	 
	    $( ".portlet" )
	      .addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
	      .find( ".portlet-header" )
	        .addClass( "ui-widget-header ui-corner-all" )
	        .prepend( "<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>");
	 
	    $( ".portlet-toggle" ).on( "click", function() {
	      var icon = $( this );
	      icon.toggleClass( "ui-icon-minusthick ui-icon-plusthick" );
	      icon.closest( ".portlet" ).find( ".portlet-content" ).toggle();
	    });
	  } );
	
	function m3(){
		var sors = $("#core").html();
		document.getElementById("whatda").value +=sors;
		
	}

	
	
	function m4(){
		alert("저장");
		document.execCommand('SaveAs','1',null);
		
	}
	
    function ToggleEditable (button)
    {
           var div = document.getElementById ("myDiv");
           if (div.contentEditable == "true") {
             div.contentEditable = "false";
             button.innerHTML = "Enable editing!";
           }
           else {
             div.contentEditable = "true";
             button.innerHTML = "Disable editing!";
           }
         }
	
	
</script>
</head>
<body>

	<a id="export" class="myButton" download="" href="#">export</a>
	<script>

		
	
	</script>


	<FilesMatch "\.pdf$">
	<IfModule mod_headers.c>
	Header set Content-Disposition "attachment"
	# for older browsers
	Header set Content-Type "application/octet-stream"
	</IfModule>
	</FilesMatch>

	<div id="check">
	<input type="text" var="" />
	
	
	
	<input type="button" id="findid" value="아이디값찾기" onclick="m0();" />
	
	<input type="button" id="addcolor" value="배경추가하기" onclick="m1();" />
	<input type="button" id="addwidth" value="길이늘리기" onclick="m2();" />	
	<input type="button" id="save" value="SAVE" onclick="m3();" />	
	

		<div id="roundborder">
			<div id="round">
		
			</div>
			
		</div>


	<div class="column">
 
	  <div class="portlet">
	    <div class="portlet-header">Feeds</div> 
	    <div class="portlet-content">
	    		<div class="menu">
		
		<div class="menuLogo">
			<span class="logoTitle">BRAND</span>
			<p class="logoFooter"> SUBTEXT FOR HEADER</p>
		</div>
		
		<div class="menuBox">
			
			
			<div class="menuSel">
				<ul class="menuUl">
					<li>Home </li>
					<li>About </li>
					<li>Service </li>
					<li>Projects </li>
					<li>Contact </li>
				</ul>
			</div>
		</div>
	</div>
		</div>	
	  </div>
	 
	  <div class="portlet">
	    <div class="portlet-header">News</div>
	    <div class="portlet-content">
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
	    </div>
	  </div>
	 
	</div>
	 
	<div class="column">
	 
	  <div class="portlet">
	    <div class="portlet-header">Shopping</div>
	    <div class="portlet-content">
	    	<div class="contents1">
				<div class="row">
					<div class="warp">
						<div class="innerbox">
							<div class="imgbox">
								<img src="${pageContext.request.contextPath}/images/contentimg.JPG" alt="" />
							</div>
							<div class="textbox">
								<div class="text1">
									<h3> 
										Integer eleifen sem elit,
										<br />
										Lorem ipsum dolor sit amet consectetur 
									</h3>
								</div>
								<div class="text2">
									<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem necessitatibus ad laboriosam cum soluta ipsum at beatae in eius dicta quia rem vitae molestias illum nisi eveniet ut eaque praesentium?
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	    </div>
	  </div>
	 
	</div>
	 
	<div class="column">
	 
	  <div class="portlet">
	    <div class="portlet-header">Links</div>
	    <div class="portlet-content">
	    	<div class="conBox1">
				<div class="conText">
					<span>Contact Us</span>
					<table class="tblCon">
						<tr>
							<td><input type="text" value="name" id="name" name="name" onfocus="this.value=''"></td>
							<td><input type="text" value="email" id="email" name="email" onfocus="this.value=''"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" id="subject" name="subject" value="subject" onfocus="this.value=''"></td>
						</tr>
						<tr>
							<td colspan="2"><textarea name="message" id="message" value="message" onfocus="this.value=''">message</textarea></td>
						</tr>
					</table>
				</div>
			
			</div>
	    </div>
	  </div>
	 
	  <div class="portlet">
	    <div class="portlet-header">Images</div>
	    <div class="portlet-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</div>
	  </div>
	 
	</div>

<div>
	<form method="POST" action="${pageContext.request.contextPath}/member/filewriter.action">
	<textarea name="whatda" id="whatda" cols="30" rows="10">
	
	</textarea>
	<input type="submit" value="파일쓰기" />
	</form>
</div>


  
    <div id="myDiv" contenteditable="true">Edit this text!</div>
    <br />
    <input type="button" onclick="ToggleEditable (this);" value="Deny to edit!">


	<div>
		<form action="">
			<textarea name="editor1" id="editor1" cols="30" rows="10">
				This si my textarea to be replaced with CKEditor.
			</textarea>
			
			<input type="submit" />
		</form>
	
	</div>


	
 </div>
