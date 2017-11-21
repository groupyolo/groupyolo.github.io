<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
 
<style>

	.memoBox {
		border: 1px solid black;
		width: 100%;
		height: 850px;
		padding: 20px;
	}

	.memo {
		display: inline-block;
		border: 1px solid blue;
		width: 200px;
		height: 200px;
		margin: 15px;
	}
	
	.memoInput {
		border: 1px solid black;
		width: 100%;
		height: 100px;
		padding: 10px;
	}
	
	#memoInput {
		width: 85%;
		height: 70px;
		overflow-x: hidden;
	}
	
	#memoBtn {
		width: 13%;
		height: 65px;
		float: right;
	}
	
	.memoList {
		width: 100%;
		height: 550px;
		display: inline-block;
		padding: 10px;
		margin-top: 30px;
		box-shadow: 0 0 10px 1px black;
		
	}
	
	.memoText {
		width:100%;
		height:100%;
		padding: 20px;
		color: black;
	}
	
	/* .memoText #ptime {
		position: absolute;
		float: right;
		margin-top:140px;
		z-index: 0;
	}
	 */
	#ptime{
		width:100%;
		border:1px solid grey;
		text-align: center;
		vertical-align: middle;
	}
	
</style>

<script>

	var memoInput ;

	$(document).ready(function() {
		
		$("#memoBtn").click(function() {
			
			memoInput = $("#memoInput").val();
			
			var Now = new Date();
			var NowTime = Now.getFullYear();

			NowTime += '-' + (Now.getMonth()+1);
			if( Now.getDate() < 10) { NowTime += '-' + 0 + Now.getDate(); }
			if( Now.getDate() > 9) { NowTime += '-' + Now.getDate(); }
			NowTime += ' ' + Now.getHours();
			NowTime += ':' + Now.getMinutes();
			if( Now.getSeconds() < 10) { NowTime += ':' + 0 + Now.getSeconds(); }
			if( Now.getSeconds() > 9 ) { NowTime += ':' + Now.getSeconds(); }

			var memo = "<div class='memo'>";
				
				memo += "<div class='memoText'>";
				memo +=  "<p>" + memoInput+"</p>";
				memo += "</div>" 
				memo += "<div id='ptime'><span>" + NowTime + "</span></div>";
				memo += "</div>";
				
				$(".memoList").prepend(memo);
				
				$("#memoInput").val("");
	 		

			
		});
		
	});

</script>

<!-- 방명록 구현하기 -->
 
 <div class="memoBox">
 	<blockquote>
	 	<h2>방명록</h2>
	 	<footer>방명록을 남겨주세요!</footer>
 	</blockquote>
 	
 	<div class="memoInput">
	 	<textarea id="memoInput" ></textarea>
	 	<input type="button" id="memoBtn" value="작성">
 	</div>
 	
 	<div class="memoList">
	 	<div class="memo">
	 		<div class="memoText">
	 		<p>홈페이지가 정말 이쁘십니다.! 대단하신것 같아요!...</p>
	 		</div>
	 		<div id='ptime'><span>2017-11-18 19:8:51</span></div>
	 	</div>
	 	<div class="memo">
	 		<div class="memoText">
	 		<p>우와..원더풀합니다..짱!!</p>
	 		</div>
	 		<div id='ptime'><span>2017-11-18 19:8:51</span></div>
	 	</div>
 	</div>
 </div>
 
 
 
 
 
 
 
 
