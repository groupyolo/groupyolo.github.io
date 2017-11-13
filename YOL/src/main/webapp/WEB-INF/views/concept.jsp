<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<style>

	.addc{
		background-color: blue;
	}

	.addw{
	
	}

</style>
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

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
	
	

	}); 
	

</script>

</head>
<body>
	
	<input type="text" var="" />
	
	
	<input type="button" id="findid" value="아이디값찾기" onclick="m0();" />
	
	<input type="button" id="addcolor" value="배경추가하기" onclick="m1();" />
	<input type="button" id="addwidth" value="길이늘리기" onclick="m2();" />	



</body>
</html>