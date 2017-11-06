<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="google-signin-client_id" content="575739111112-ribfp6siku4gssct7oa4vshdgogrj0ac.apps.googleusercontent.com">
<title></title>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="/web/js/jquery-1.12.4.js"></script>
<script>
	$(document).ready(function(){
		onSignIn();
	});
	
	
/* 	function onSignIn(googleUser) {
		  var profile = googleUser.getBasicProfile();
		 // console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		 // console.log('Name: ' + profile.getName());
		 // console.log('Image URL: ' + profile.getImageUrl());
		 // console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.

			console.log(profile);
	} */
</script>
<style>
</style>

</head>
<body>
	
	<form method="post" action="/web/main/loginok.action">
	
	<span>이메일: </span> <input type="email"	name="mEmail" id="mEmail" required>
	<span>비번: </span> <input type="password" name="mPassword" id="mPassword" required>
	
	<input type="submit" value="로그인">
	</form>
	

	<!-- 구글 로그인 -->



<div class="g-signin2" data-onsuccess="onSignIn"></div>

<script>

function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
 // console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
 // console.log('Name: ' + profile.getName());
 // console.log('Image URL: ' + profile.getImageUrl());
 // console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.

	console.log(profile);
}


</script>
	
	<!-- 페이스북 로그인 -->
	
<button type="button" class="button facebook" id="loginBtn">페이스북 계정</button>
 
            
<script>
function getUserData() {

    FB.api('/me', {fields: 'name,email'}, function(response) {
        console.log(JSON.stringify(response));
        $("#name").text("이름 : "+response.name);
        $("#email").text("이메일 : "+response.email);
        $("#id").text("아이디 : "+response.id);
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
            getUserData();
            document.getElementById('status').innerHTML = 'log in' ;
            $("#user_id").text("FB UID : "+user_id);
        } else {
            //user is not authorized
            document.getElementById('status').innerHTML = 'Please log ' +
            'into this app.';
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
            access_token = response.authResponse.accessToken; //get access token
            user_id = response.authResponse.userID; //get FB UID
            console.log('access_token = '+access_token);
            console.log('user_id = '+user_id);
            $("#access_token").text("접근 토큰 : "+access_token);
            $("#user_id").text("FB UID : "+user_id);
            //user just authorized your app
            //document.getElementById('loginBtn').style.display = 'none';
            getUserData();
        }
    }, {scope: 'email,public_profile,user_birthday',
        return_scopes: true});
}, false);
</script>	
	
	

</body>
</html>