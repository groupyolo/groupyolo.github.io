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
		width: 202px; height:202px;
		border-radius: 100%;
		border:1px solid black;
	}

	#round{
		width: 200px; height:200px;
		background-color: yellow;
		border-radius: 100%;
	}
	#roundborder:hover{
		cursor: pointer;
	}
	
	#round:

</style>
<script src="//cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
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
	
	CKEDITOR.replace( 'editor1' );
	
	}); 
	
	
	

</script>
</head>
<body>
	
	<input type="text" var="" />
	
	
	<input type="button" id="findid" value="아이디값찾기" onclick="m0();" />
	
	<input type="button" id="addcolor" value="배경추가하기" onclick="m1();" />
	<input type="button" id="addwidth" value="길이늘리기" onclick="m2();" />	


		<div id="roundborder">
			<div id="round">
		
			</div>
		</div>

	<div>
		<form action="">
			<textarea name="editor1" id="editor1" cols="30" rows="10">
				This si my textarea to be replaced with CKEditor.
			</textarea>
			
			<input type="submit" />
		</form>
	
	</div>

</body>
</html>