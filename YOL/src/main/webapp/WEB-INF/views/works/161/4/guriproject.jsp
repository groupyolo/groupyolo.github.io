<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
%>
<style>
	
	.column {
    width: 100%;
    float: left;
    padding-top: 0px;
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

	.ui-widget-header{
	background-color: white;
	border: 0px solid white;
	}
	
	
	.menu {
		width: 100%;
		height: 100%;
	}
	
	.menuLogo {
		width: 100%;
		height: 100%;
		margin: 0px auto;
		text-align: center;
		background-color: white;
		padding: 0.5%;
	}
	
	.menuLogo .logoTitle {
		color: black;
		font-weight: bold;
		font-size: 3em;
	}
	
	.menuLogo .logoFooter {
		color: #aaa;
		font-size: 1.5em;
		font-weight: bold;
	}
	
	.menuBox {
		background-color: #aaa;
		widht: 100%;
		height: 100%;
	}
	
	 .menuSel {
		width: 60%;
		display: inline-block;
		margin: 0px auto;
		margin-left: 20%;
		margin-right: 20%;
		text-align: center;
	}
	
	 .menuUl {
	 	width: 100%;
		list-style : none;
		display: inline-block;
		margin: 0px auto;
	}
	
	.menuUl li {
		display: inline-block;
		padding: 3%;
		padding-top: 3%;
		color: white;
		font-size: 1.5em;
		font-weight: bold;
		margin: 0px auto;
	}
	
	.menuUl li:hover {
		background-color: red;
	}  	
	
	.textbox1 {
	/* border: 1px solid black; */
	width: 996px;
	height: 300px;
	}
	
	.textbox1 .row {
		width: 900px;
		height: 100%;
		margin: 0 auto;
	}
	
	.textbox1 .row .textbox {
		width: calc(91%/4);
		height: 100%;
		float: left;
		padding-left: 20px;
	}
		
	.textbox1 .row .textbox .text1 {
		padding: 0px;
		margin: 0px;
		font-size: 70px;
		margin-bottom: 20px;
		min-width: 23px;
		heigth: 70px;
		color: #888;
	}
	
	.textbox1 .row .textbox .text2 {
		 color: #888;
		 font-size: 13px;
		 font-weight: 700;
	}	
	
	.textbox1 .row .textbox .text3 hr {
		border-top: 2px solid #000;
		width: 56px;
		margin: 15px auto 15px 0; 
	}
	
	.textbox1 .row .textbox .text4 {
		min-width: 23px;
		margin-bottom: 0;
		font-size: 12px;
		 color: #888;
	}
	
	.contents1 {
	width: 998px;
	height: 480px;
	}
	
	.contents1 .row {
		width: 900px;
		height: 450px;
		margin: 0px auto;
	}
	
	.contents1 .warp {
		position: relative;
		width: 830px;
		/* height: 390px; */
		padding-top: 60px;
		padding-left: 15px;
		padding-right: 15px;
		margin: 0px auto;
	}
	
	.contents1 .innerbox {
		width: 830px;
		height: 280px;
		padding-top: 60px;
		padding-bottom: 50px;
		background-color: #f8f8f8;
		float: left;
		margin: 0px auto;
	}
	
	.contents1 .imgbox {
		/* border: 1px solid red; */
		width: 50%;
		padding-left: 30px;
		/* padding-right: 30px; */
		 float: left; 
	}
	
	.contents1 .imgbox img {
		margin-top: -120px;
		 width: 100%; 
		 height:380px;
		border: 0;
	}
	
	.contents1 .textbox {
		/* border: 1px solid black;  */
		width: 40%;
		padding: 10px;
		padding-left:15px;
		/* padding-right: 60px; */
		float: left;
		cursor: text;
	
	}
	
	.contents1 .textbox .text1 h3 {
		/* border: 1px solid red; */
		line-height: 1.7;
		font-size: 22px;
		font-weight: 100;
		margin-top:0px;
		margin-bottom: 20px;
		color: #888;
		/* cursor:pointer; */
	}
	
	.contents1 .textbox .text2 p {
		/* border: 1px solid orange; */
		line-height: 2.4;
		color: #888;
		font-size: 12px;
		font-weight: 300;
		margin-bottom:0;
		/* cursor:pointer; */
	}
		
	.gallery1 {
	/* border: 1px solid black; */
	width: 996px;
	height: 700px;
	padding: 20px 0;
	}
	
	.gallery1 .row {
		/* border: 1px solid red; */
		width: 100%;
		height: 100%;
		margin: 0px auto;
	}
	
	.gallery1 .line1 {
		/* border: 1px solid blue; */
		width: 100%;
		height: 50%;
		
	}
	
	.gallery1 .line2 {
	/* 	border: 1px solid orange; */
		width: 100%;
		height: 50%;
		float: left;
	}
	 .img1, .img2, .img3 {
		width: calc(95% /3);
		height: 95%;
		float: left;
		background-color: #eee;
	}  
	
	.img2, .img3 {
		margin-left: 15px;
	}
	
	.gallery1 img {
		width: 100%;
		height: 85%;
		margin-bottom: 0px;
	}
	
	.con {
		margin-top: 0px;
		width: 90%;
		height: 10%;
		background-color: #eee;
		padding: 8px 15px ;
	}
	
	.con span:nth-child(1) {
		font-size: 15px;
		color: #555;
	}
	
	.con span:nth-child(3) {
		font-size: 12px;
		color: #999;
		padding-bottom:5px;
	}
	
		.conBox1 {
		width:100%;
		height: 800px;
		background: linear-gradient(to bottom, #f0f2f0, #000c40);
	}

	.conText {
		width: 100%;
		margin: 0px auto;
		padding-top: 100px;
		text-align: center;
	}
	
	.conText span {
		color: black;
		font-size: 4em;
	}
	
	.tblCon {
		margin: 0px auto;
		margin-top: 50px;
	}
	
	.tblCon tr {
		padding: 30px;
		color: black;
		font-size: 1.3em;
	}
	
	.tblCon tr:nth-child(1) input {
		width: 300px;
		height: 50px;
		padding: 30px;
		margin: 20px;
		
	}
	.tblCon tr:nth-child(2) input {
		width: 650px;
		height: 50px;
		padding: 30px;
		margin: 20px;
		
	}
	
	.tblCon tr:nth-child(3) textarea {
		width: 650px;
		height: 200px;
		padding: 30px;
		margin: 20px;
	}
	
	#remotecon{
		border:1px solid black;
		width:100px;
		height:100px;
		position:fixed;
		top: 100px;
		right:20px;
		
	}
	
	
</style>
<script src="//cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
<script>
$(document).ready(function() {    

	
	$(".portlet").resizable(	);
	$(".portlet").droppable( );
	
	
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
	

	
	function ToggleEditable (button) {
        var div = document.getElementById ("myDiv");
        if (div.contentEditable == "true") {
          div.contentEditable = "false";
          console.log(div.contentEditable);
          button.innerHTML = "Enable editing!";
        }
        else {
          div.contentEditable = "true";
          console.log(div.contentEditable);
          button.innerHTML = "Disable editing!";
        }
	}
	
    function save(){
		var sors = $("#core").html();
		document.getElementById("whatda").value +=sors;
    }
	
	
	
</script>


	<div class="column">
 
	  <div class="portlet">
	   <div class="portlet-header"></div>
	    <div class="portlet-content">
	    		<div class="menu">
		
		<div class="menuLogo">
			<span class="logoTitle">BRAND</span>
			<p class="logoFooter"> SUBTEXT FOR HEADER</p>
		</div>
		
		<div class="menuBox">
			<div class="menuSel">
				<ul class="menuUl" contenteditable="true">
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
	   <div class="portlet-header"></div>
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
	   <div class="portlet-header"></div>
	    <div class="portlet-content">
	    	<div class="contents1">
				<div class="row">
					<div class="warp">
						<div class="innerbox">
							<div class="imgbox">
								<img src="${pageContext.request.contextPath}/images/contentimg.JPG" alt="" />
							</div>
							<div class="textbox" >
								<div class="text1" contenteditable="true">
									<h3> 
										Integer eleifen sem elit,
										<br />
										Lorem ipsum dolor sit 
									</h3>
								</div>
								<div class="text2" contenteditable="true">
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
	    <div class="portlet-header"></div>
	    <div class="portlet-content">
			<div class="gallery1">
				<div class="row">
					<div class="line1">
						<div class="img1">
							<img src="${pageContext.request.contextPath }/images/g1.JPG" alt="" />
							<div class="con" contenteditable="true">
								<span>LITORA</span>
								<br />
								<span>Sed ul imperdiet ul semper felis</span>
							</div>
						</div>
						<div class="img2">
							<img src="${pageContext.request.contextPath }/images/g2.JPG" alt="" />
							<div class="con" contenteditable="true">
								<span>CONUBIA</span>
								<br />
								<span>Sed ul imperdiet ul semper felis</span>
							</div>
						</div>
						<div class="img3">
							<img src="${pageContext.request.contextPath }/images/g3.JPG" alt="" />
							<div class="con" contenteditable="true">
								<span>NOSTRA</span>
								<br />
								<span>Sed ul imperdiet ul semper felis</span>
							</div>
						</div>
					</div>
					<div class="line2">
						<div class="img1">
							<img src="${pageContext.request.contextPath }/images/g3.JPG" alt="" />
							<div class="con" contenteditable="true">
								<span>MAECENAS</span>
								<br />
								<span>Sed ul imperdiet ul semper felis</span>
							</div>
						</div>
						<div class="img2">
							<img src="${pageContext.request.contextPath }/images/g4.JPG" alt="" />
							<div class="con" contenteditable="true">
								<span>LACUS</span>
								<br />
								<span>Sed ul imperdiet ul semper felis</span>
							</div>
						</div>
						<div class="img3">
							<img src="${pageContext.request.contextPath }/images/g5.JPG" alt="" />
							<div class="con" contenteditable="true">
								<span>MAURIS</span>
								<br />
								<span>Sed ul imperdiet ul semper felis</span>
							</div>
						</div>
					</div>
				</div>
			</div>
	    </div>
	  </div>
	  <div class="portlet">
	    <div class="portlet-header"></div>
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
	 
	
	 
	</div>

 
    <!-- <div id="myDiv" contenteditable="true">Edit this text!</div> -->
    <br />
    <!-- <input type="button" id ="deny" onclick="ToggleEditable(this);" value="Deny to edit!"> -->

	<div id="remotecon">
	<form method="POST" action="/web/member/filewriter.action">
	<textarea style="display:none;" name="whatda" id="whatda" cols="30" rows="10">	
	</textarea>
	<input type="hidden"  name="prFileName" value="${mapping }">
	<input type="hidden" name="prSeq" value="${prSeq }">
	<input type="submit" class="btn" style="width:100%;" value="저장하기" onclick="save();">
	<span style="width:100%;"><a id="export" class="btn" style="border:1px soild ligthgrey;"download="" href="#">내려받기</a></span>
	<input type="button"class="btn" style="width:100%;"value="이미지추가" id="btnImg">
	<div id="imgAll"></div>


	</form>
	</div>

