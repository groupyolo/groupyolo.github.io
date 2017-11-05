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

<script>

  FB.getLoginStatus(function(response) {
	    statusChangeCallback(response);
	});
  
  
  FB.login(function(response) {
	  if (response.status === 'connected') {
	    // Logged into your app and Facebook.
	  } else {
	    // The person is not logged into this app or we are unable to tell. 
	  }
	});
  
  
/*   {
	    status: 'connected',
	    authResponse: {
	        accessToken: '...',
	        expiresIn:'...',
	        signedRequest:'...',
	        userID:'...'
	    }
	}
   */
  
</script>


</body>
</html>