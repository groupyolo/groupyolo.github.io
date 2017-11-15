<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>

	#tbl tr td{
		text-align: center;
		vertical-align: middle;
	}
	#tbl tr:NTH-CHILD(7) td{
		text-align: left;
	}
	#tbl tr:NTH-CHILD(8) td{
		text-align: left;
	}

	#login{
		background-color: green;	
		color:white;
	}
	#loginBtn{
		cursor:pointer;
	}
	
	#box{
		margin:100px auto;
		width:500px;
	}
	
	a{
		/* text-decoration: none; */
		font-weight:bold;
		
	}
	a:hover{
		color:navy;
	}
	
</style>
<meta name="google-signin-client_id" content="575739111112-ribfp6siku4gssct7oa4vshdgogrj0ac.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
	
	<c:if test="${clear=='yes' }">
	<div style="margin:30px auto; color:red; font-size:1.2em; width:800px; text-align:center;">
		아이디가 없거나, 비밀번호가 틀리거나, 또는 인증되지 않은 이메일입니다. 
	</div>
	</c:if>
	
	<form method="post" action="${pageContext.request.contextPath }/main/apiloginok.action" id="apiLogin">
	<input type="hidden" name="mEmail" id="apiMEmail" >
	<input type="hidden" name="mgSeq" id="mgSeq" >
	</form>
	
	<!-- 비번 잘못 입력시 다시 페이지 불러오고, 아이디는 유지시키고 어디에다 비번 ㅊ틀렷다고 보여주기 -->
	
	<div id="box">
	<form method="post" action="/web/main/loginok.action">
	<table id="tbl" class="table">
	<tr>
		<td>
		<div id="loginBtn" style="background-image:url('${pageContext.request.contextPath }/images/facebook-login.png');width:480px;height:40px;background-size: contain;box-shadow: 2px 2px 2px gray;"></div>
		</td>
	</tr>
	<tr>
		<td>
		<div id="goo" class="g-signin2" data-onsuccess="onSignIn" style="width:480px; "></div>
		</td>
	</tr>
	<tr>
		<td>
		또는
		</td>
	</tr>
	<tr>
		<td>
		<input type="email"	name="mEmail" id="mEmail" class="form-control" placeholder="이메일을 입력하세요." required>
		</td>
	</tr>
	<tr>
		<td>
		<input type="password" name="mPassword" id="mPassword" class="form-control" placeholder="비밀번호를 입력하세요" required >
		</td>

	</tr>
	<tr>
		<td>
			<input type="submit" id="login" value="로그인" class="form-control" >
		</td>
	</tr>
	<tr>
		<td>
			아직 회원이 아니세요? <a href="${pageContext.request.contextPath }/main/sign.action">회원가입</a>
		</td>
	</tr>
	<tr>
		<td>
			비밀번호를 잊어버리셨다구요? <a href="${pageContext.request.contextPath }/main/findpassword.action">비밀번호찾기</a>
		</td>
	</tr>
	<tr>
	</table>
	</form>
	</div>



	<!-- 구글 로그인 -->


<script>

	var mEmail;
	var mName;
	var profile;
	var num=0;

 	$("#goo").click(function(){
		
 		num++;
 		
 		
	}); 
	
	function onSignIn(googleUser) {
	 	profile = googleUser.getBasicProfile();
	 	mEmail = profile.getEmail();
		mNickName = profile.getName();
		
		
		if(num>0){
			apiCheck();
		}
		
	}
	
	function apiCheck(){
		
		$.ajax({	
			type:"post",
			url:"${pageContext.request.contextPath }/main/apilogincheck.action",
			dataType:"json",
			data:"mEmail="+mEmail+"&mNickName="+mNickName+"&mgSeq=2",
			success:function(result){
				console.log(result.result);
				if(result.result==0){
					location.href="${pageContext.request.contextPath }/main/apisign.action?mEmail="+mEmail+"&mNickName="+mNickName+"&mgSeq=2";
					// 가입 및 닉네임 페이지로 
					//이게 아이디가 되면 혹시 같은 이메일이 있으면 겹치게 되는데 이를 연동회원 구분으로 체크
				}else if(result.result==1){
					$("#apiMEmail").val(mEmail);
					$("#mgSeq").val(2);
					
					$("#apiLogin").submit();
					
				}
				
			},
			error:function(err){
				alert(err);
			}
			
			
		});		
		
	}

</script>
	
	<!-- 페이스북 로그인 -->
	
<!-- <div id="fb-root"></div> -->
            
<script>



function getUserData() {

    FB.api('/me', {fields: 'name,email'}, function(response) {
       
       mEmail=response.email;
       mNickName=response.name;
       
    	$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath }/main/apilogincheck.action",
			dataType:"json",
			data:"mEmail="+mEmail+"&mNickName="+mNickName+"&mgSeq=3",
			success:function(result){
				if(result.result==0){
					location.href="${pageContext.request.contextPath }/main/apisign.action?mEmail="+mEmail+"&mNickName="+mNickName+"&mgSeq=3";
					// 가입 및 닉네임 페이지로 
					//이게 아이디가 되면 혹시 같은 이메일이 있으면 겹치게 되는데 이를 연동회원 구분으로 체크
							
				}else if(result.result==1){
					$("#apiMEmail").val(mEmail);
					$("#mgSeq").val(3);
					$("#apiLogin").submit();
					
				}
				
			},
			error:function(err){
				alert(err);
			}
			
			
		});
       
    });
}

window.fbAsyncInit = function() {
    //SDK loaded, initialize it
 	//console.log("aa");
    FB.init({
        appId      : '{2001097453500031}',
        cookie     : false,  // enable cookies to allow the server to access
        xfbml      : true ,  // parse social plugins on this page
        version    : 'v2.8' // use graph api version 2.8
    });
  
    //check user session and refresh it
 	//console.log("bb");
    FB.getLoginStatus(function(response) {
        if (response.status === 'connected') {
            
        } else {
         
        }
    });
};
  
(function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.10&appId=2001097453500031";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
  
//add event listener to login button
document.getElementById('loginBtn').addEventListener('click', function() {
    //do the login
    FB.login(function(response) {
        if (response.authResponse) {
        	
           getUserData();
        }
    }, {scope: 'email,public_profile,user_birthday',
        return_scopes: true});
}, false);
</script>	

