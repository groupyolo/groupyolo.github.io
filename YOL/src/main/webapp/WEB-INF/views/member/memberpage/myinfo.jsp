<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="myinfo">
	
	
	<div id="profile">
		<img id="profilepic" src="http://farm5.static.flickr.com/4009/4643860882_171119865c.jpg" alt="" />
		<div class="vcard">
			<span>${loginDTO.mNickName }</span>
		</div>
		<input type="button" value="Edit profile">
		<div id="jdate">
			<span>가입일 : ${loginDTO.mDate.substring(0,10)}</span>		
		</div>
		
	</div>
	
	<div id="prodetails">
		<div id="">
			차트1
		</div>
		<hr />
		<div id="chart2">
			차트2
		</div>
		<hr />
		<div id="chart3">
			차트3
		</div>
	</div>

</div>