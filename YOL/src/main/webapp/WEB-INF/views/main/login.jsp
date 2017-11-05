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
<style>
</style>
</head>
<body>
<!-- 구글 로그인 -->

<div class="g-signin2" data-onsuccess="onSignIn"></div>

<script>
function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
  console.log('Name: ' + profile.getName());
  console.log('Image URL: ' + profile.getImageUrl());
  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
}
</script>

<!-- 페이스북 로그인 -->

<!-- <script>


  // This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
      
      console.log("fbID:"+response.authResponse.userID);
      console.log("fbToken:"+response.authResponse.accessToken);
      
    } else {
      // The person is not logged into your app or we are unable to tell.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.';
    }
  }

  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '{2001097453500031}',
    cookie     : true,  // enable cookies to allow the server to access 
                        // the session
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.8' // use graph api version 2.8
  });
  }

  // Now that we've initialized the JavaScript SDK, we call 
  // FB.getLoginStatus().  This function gets the state of the
  // person visiting this page and can return one of three states to
  // the callback you provide.  They can be:
  //
  // 1. Logged into your app ('connected')
  // 2. Logged into Facebook, but not your app ('not_authorized')
  // 3. Not logged into Facebook and can't tell if they are logged into
  //    your app or not.
  //
  // These three cases are handled in the callback function.

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });

 
  
  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() {
    
    FB.api('/me',{fields:'name,email,gender'}, function(response) {
      console.log('Successful login for: ' + response.name);
      document.getElementById('status').innerHTML =
        'Thanks for logging in, ' + response.name + '!';
      console.log("fbEMAIL:"+response.email);
 
    });
  }
  

  
</script>


<div id="fb-root"></div>
<script>
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.10&appId=2001097453500031';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>

<div class="fb-login-button" data-width="100" data-max-rows="1" data-size="medium" data-button-type="login_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>



<div id="status">
</div>
 -->

<!-- 로그아웃
<scrip>
FB.logout(function(response) {
  // user is now logged out
});

</script>

 -->
 

 
 <button type="button" class="button facebook" id="loginBtn">페이스북 계정</button>
 
            <div id="access_token">a</div>
            <div id="user_id">b</div>
            <div id="name">c</div>
            <div id="email">d</div>
            <div id="id">g</div>
            
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
 <div id="status">
</div>

</body>
</html>