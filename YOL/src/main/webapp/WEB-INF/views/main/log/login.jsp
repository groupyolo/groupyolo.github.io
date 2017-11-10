<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>

	
	#login{
		background-color: green;	
	}
	#box{
		margin:100px auto;
		width:500px;
	}
	
</style>
<meta name="google-signin-client_id" content="575739111112-ribfp6siku4gssct7oa4vshdgogrj0ac.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
	
	<form method="post" action="${pageContext.request.contextPath }/main/apiLoginok.actionz" id="apiLogin">
	<input type="hidden" name="mEmail" id="apiMEmail" >
	<input type="hidden" name="mgSeq" id="mgSeq" >
	</form>
	
	
	<div id="box">
	<form method="post" action="/web/main/loginok.action">
	<table id="tbl" class="table">
	<tr>
		<td>
		<div id="loginBtn" style="background-image:url('${pageContext.request.contextPath }/images/facebook-login.png');width:240px;height:40px;background-size: contain;"></div>
		</td>
	</tr>
	<tr>
		<td>
		<div id="goo" class="g-signin2" data-onsuccess="onSignIn" style="width:240px;"></div>
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
			비밀번호를 잊어버리셨다구요? <a href="${pageContext.request.contextPath }/main/findPassword.action">비밀번호찾기</a>
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
			url:"${pageContext.request.contextPath }/main/apiLoginCheck.action",
			dataType:"json",
			data:"mEmail="+mEmail+"&mNickName="+mNickName+"&mgSeq=2",
			success:function(result){
				if(result.result==0){
					location.href="${pageContext.request.contextPath }/main/apiSign.action?mEmail="+mEmail+"&mNickName="+mNickName+"&mgSeq=2";
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
	

            
<script>
function getUserData() {

    FB.api('/me', {fields: 'name,email'}, function(response) {
       
       mEmail=response.email;
       mNickName=response.name;
       
    	$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath }/main/apiLoginCheck.action",
			dataType:"json",
			data:"mEmail="+mEmail+"&mNickName="+mNickName+"&mgSeq=3",
			success:function(result){
				if(result.result==0){
					location.href="${pageContext.request.contextPath }/main/apiSign.action?mEmail="+mEmail+"&mNickName="+mNickName+"&mgSeq=3";
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

