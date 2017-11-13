<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="google-signin-client_id" content="575739111112-ribfp6siku4gssct7oa4vshdgogrj0ac.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>

	<form method="post" action="/web/main/apiLoginok.action" id="apiLogin">
	<input type="hidden" name="mEmail" id="apiMEmail" >
	<input type="hidden" name="mgSeq" id="mgSeq" >
	</form>

	
	<form method="post" action="/web/main/loginok.action">
	
	<span>이메일: </span> <input type="email"	name="mEmail" id="mEmail" required>
	<span>비번: </span> <input type="password" name="mPassword" id="mPassword" required>
	
	<input type="submit" value="로그인">
	</form>
	

	<!-- 구글 로그인 -->


<div id="goo" class="g-signin2" data-onsuccess="onSignIn"></div>



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
			url:"/web/main/apiLoginCheck.action",
			dataType:"json",
			data:"mEmail="+mEmail+"&mNickName="+mNickName+"&mgSeq=2",
			success:function(result){
				if(result.result==0){
					location.href="/web/main/apiSign.action?mEmail="+mEmail+"&mNickName="+mNickName+"&mgSeq=2";
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
	
<button type="button" class="button facebook" id="loginBtn">페이스북 계정</button>
 
            
<script>
function getUserData() {

    FB.api('/me', {fields: 'name,email'}, function(response) {
       
       mEmail=response.email;
       mNickName=response.name;
       
    	$.ajax({
			type:"post",
			url:"/web/main/apiLoginCheck.action",
			dataType:"json",
			data:"mEmail="+mEmail+"&mNickName="+mNickName+"&mgSeq=3",
			success:function(result){
				if(result.result==0){
					location.href="/web/main/apiSign.action?mEmail="+mEmail+"&mNickName="+mNickName+"&mgSeq=3";
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
    FB.init({
        appId      : '{2001097453500031}',
        cookie     : true,  // enable cookies to allow the server to access
                // the session
        xfbml      : true,  // parse social plugins on this page
        version    : 'v2.8' // use graph api version 2.8
    });
  
    //check user session and refresh it
    FB.getLoginStatus(function(response) {
        if (response.status === 'connected') {
            //user is authorized
            //document.getElementById('loginBtn').style.display = 'none';
          //  getUserData();
         //   document.getElementById('status').innerHTML = 'log in' ;
         //   $("#user_id").text("FB UID : "+user_id);
        } else {
            //user is not authorized
        //    document.getElementById('status').innerHTML = 'Please log ' +
         //   'into this app.';
        }
    });
};
  
//load the JavaScript SDK
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
          //  access_token = response.authResponse.accessToken; //get access token
          //  user_id = response.authResponse.userID; //get FB UID
           // $("#access_token").text("접근 토큰 : "+access_token);
          //  $("#user_id").text("FB UID : "+user_id);
           getUserData();
        }
    }, {scope: 'email,public_profile,user_birthday',
        return_scopes: true});
}, false);
</script>	

