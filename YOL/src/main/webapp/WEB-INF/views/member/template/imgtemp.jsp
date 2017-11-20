<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/imgtemp.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/imgtemp.js"></script>

<span>*이미지 사이즈*</span>
<input type="button" value="이미지추가" id="btnImg"/>
<div id="imgAll"></div>

<!-- <div id="imgResize" style="position:absolute; left:520px; top:500px; visibility:hidden;" >
<span>너비:</span><input type="text" name="width" style="width:30px;"/><span>높이:</span><input type="text" name="height" style="width:30px;"/>
<input type="button" onclick="sizeSet()"/>
</div> -->

<!-- <div class="adImg">
	<input type="file" class="imgInp" id="imgInp1"/>
	<div class="imgtemp">
		<img src="#" alt="img" id="imgtag1" onclick="imgResize(imgtag1)" />
	</div>
</div>
<div class="adImg">
	<input type="file" class="imgInp" id="imgInp2"/>
	<div class="imgtemp">
		<img src="#" alt="img" id="imgtag2" onclick="imgResize(imgtag2)" />
	</div>
</div> -->

<!-- <div id="imgtemp">
	<article>
	  <p id="status">File API &amp; FileReader API not supported</p>
	  <p><input type=file></p>
	  <p>Select an image from your machine to read the contents of the file without using a server</p>
	  <div id="holder"></div>
	</article>
</div>
<script>
	var upload = document.getElementsByTagName('input')[0],
	    holder = document.getElementById('holder'),
	    state = document.getElementById('status');
		
	if (typeof window.FileReader === 'undefined') {
	  state.className = 'fail';
	} else {
	  state.className = 'success';
	  state.innerHTML = 'File API & FileReader available';
	}
	 
	upload.onchange = function (e) {
	  e.preventDefault();
	
	  var file = upload.files[0], reader = new FileReader();
	  reader.onload = function (event) {
	  	var img = new Image();
	    img.src = event.target.result;
	    // note: no onload required since we've got the dataurl...I think! :)
	    if (img.width > 560) { // holder width
	      img.width = 560;
	    }
	    holder.innerHTML = '';
	    holder.appendChild(img);
	  };
	  reader.readAsDataURL(file);
		
	  return false;
	};
</script> -->