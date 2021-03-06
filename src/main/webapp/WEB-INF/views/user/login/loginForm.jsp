<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->
<meta name ="google-signin-client_id" content="859199568775-ifl8u8l48ke6l9m0d8998t4fccrn6jti.apps.googleusercontent.com">
<title>로그인</title>
<link href="/resources/common/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/user/css/style.css" rel="stylesheet" type="text/css">
<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<style type="text/css">
	a{
		text-decoration: none;
		color: black;
	}
	a:hover{
		color: black;
		text-decoration: underline;
	}
	.linksns{
		cursor: pointer;
	}
	.linksq{
		padding: 20px;
		color: gray;
	}
	.linksen{
		padding-top: 20px;
	}
	.top_body{
		background-color: #EAEAEA;
		height: 100%;
	}
	.middle_body{
		width: 700px;
		padding: 80px;
		padding-top: 50px; 
		padding-bottom: 0px;
		background-color: white;
		margin-left: auto;
		margin-right: auto;
		height:calc(160vh-vh)
	}
	.ad{
		width: 300px;
		cursor: pointer;
	}
</style>
</head>
<body>
	<div class="top_body">
		<div class="middle_body">
			<header>
				<img class="mainIcon" alt="" src="/resources/user/image/icon_main_128.png" onclick="location.href='/index/indexView';">
				<button type="button" style="float: right; margin-top: 40px; background-color: white; border: 1px solid #BDBDBD;">비로그인 주문조회</button>
			</header>
			<section>
				 <form action="" method="post" id="loginForms" name="" enctype="multipart/form-data">
				 	<div class="form-check" style="margin-bottom: 20px;">
						<input class="form-check-input" type="checkbox" value="" id="keepLogin">
						<label class="form-check-label" for="keepLogin">
							로그인 유지
						</label>
				 	</div>
				 	<div>
				 		<div class="mb-3 mar">
						    <input type="text" class="form-control form-control-lg" id="ifmmId" placeholder="아이디">
						    <div class="valid-feedback">
						    	아이디를 입력하세요.
						    </div>
						  </div>
						  <div class="mb-3">
						  	<input type="password" class="form-control form-control-lg" id="ifmmPassword" placeholder="비밀번호">
						  	<div class="valid-feedback">
						    	비밀번호를 입력하세요.
						    </div>
						  </div>
						  <div class="d-grid gap-2">
						  	<button type="submit" class="btn btn-primary btn-lg" id="btnLogin" name="">로그인</button>
						  </div>
				 	</div>
				 	<div class="row g-3 align-items-center" style="padding-top: 20px; min-width: 500px;">
								<div class="col-auto" style="margin-left:auto;">
									<a href="">아이디 찾기</a>
								</div>
								<div class="col-auto">|</div>
								<div class="col-auto">
									<a href="">비밀번호 찾기</a>
								</div>
								<div class="col-auto">|</div>
								<div class="col-auto" style="margin-right:auto;">
									<a href="/user/memberChoice">회원가입</a>
								</div>
					</div>
					<div class="row g-3 align-items-center" style="min-width: 565px;">
						<div class="col-auto linksq" style="margin-left:auto;" onclick="location.href='${url}';">
							<div id="naver_id_login" style="display:none;"></div>
							<div class="circle linksns naverlogin" style="float: none;">
								<img alt="" src="/resources/user/image/icon_naver_128.png">
							</div>
							<div class="linksns linksen">
								<div>네이버 로그인</div>
							</div>
						</div>
						<div class="col-auto linksq">
							<div class="circle linksns" onclick="location.href='';">
								<img alt="" src="/resources/user/image/icon_kakao_128.png">
							</div>
							<div class="linksns linksen">
								<div>카카오 로그인</div>
							</div>
						</div>
						<div class="col-auto linksq">
							<div class="circle linksns" onclick="location.href='';">
								<img alt="" src="/resources/user/image/icon_facebook_128.png">
							</div>
							<div class="linksns linksen">
								<div>페이스북 로그인</div>
							</div>
						</div>
						<div class="col-auto linksq" id="GgCustomLogin" style="margin-right:auto;">
							<a href="javascript:void(0)">
								<div class="circle linksns" onclick="">
									<img alt="" src="/resources/user/image/icon_facebook_128.png">
								</div>
								<div class="linksns linksen" style="margin-left:10px;">
									<div>구글 로그인</div>
								</div>
							</a>
						</div>
					</div>
					<!-- <button class="btn btn-sm" type="button" id="GgCustomLogin"> -->
	    			<!-- <a href="javascript:void(0)">
	    				google
	    			</a> -->
	    			<!-- </button> -->
				 </form>
				 <div style="margin-left: 25%;">
				 	<img class="ad" alt="" src="/resources/user/image/ad.png">
				 </div>
			</section>
			<footer>
				<span class="bottom_span">Copyright © rebecca Co., Ltd. ALl Rights Reserved.</span>
			</footer>
		 </div>
	 </div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
	 <script src="/resources/xdmin/js/validation.js"></script>
	 <script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	 <script src="/resources/common/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	  <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
	 <script type="text/javascript">
		
	 	$("#btnLogin").on("click",function(){
	 		$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/loginProc"
				,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
				,success: function(response) {
					if(response.rt == "success") {
						location.href = "/index/indexView";
					} else {
						alert("회원없음");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
	 	});
	  	
	  	/* $(document).on("click", ".naverlogin", function(){ 
			var btnNaverLogin = document.getElementById("naver_id_login").firstChild;
			btnNaverLogin.click();
		}); */
		
		
		
	 		
	 </script>
	 <script type="text/javascript">
	 	//네이버
	  	var naver_id_login = new naver_id_login("g1ifsIGlccSo0q4nReZx", "http://localhost:8080/user/callback");
	  	var state = naver_id_login.getUniqState();
	  	naver_id_login.setButton("white", 2,40);
	  	naver_id_login.setDomain("http://localhost:8080/user/loginForm");
	  	naver_id_login.setState(state);
	  	naver_id_login.setPopup();
	  	naver_id_login.init_naver_id_login();
	  	
	  	
	  </script>
	  <script type="text/javascript">
	//구글
	  //처음 실행하는 함수
	  	function init() {
	  		gapi.load('auth2', function() {
	  			gapi.auth2.init();
	  			options = new gapi.auth2.SigninOptionsBuilder();
	  			options.setPrompt('select_account');
	  	        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
	  			options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
	  	        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
	  	        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
	  			gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	  		})
	  	}
	  	function onSignIn(googleUser) {
	  		var access_token = googleUser.getAuthResponse().access_token;
	  		$.ajax({
	  	    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
	  			// url: 'https://people.googleapis.com/v1/people/me'
	  	        // key에 자신의 API 키를 넣습니다.
	  			data: {personFields:'birthdays', key:'AIzaSyCL33JTefAZENirb0Z36TIbFVCDErE8Cn0', 'access_token': access_token}
	  			, method:'GET'
	  		})
	  		.done(function(e){
	  	        //프로필을 가져온다.
	  			var profile = googleUser.getBasicProfile();
	  	        var id = profile.getId();
	  	        var username = profile.getName();
	  	        
	  			console.log(username);
		  		$.ajax({
					async: true 
					,cache: false
					,type: "post"
					,url: "/user/loginProcGoogle"
					,data : { "ifmmName":username}
					,success: function(response) {
						if(response.rt == "success") {
							location.href = "/index/indexView";
						} else {
							alert("로그인 실패");
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
	  		})
	  		.fail(function(e){
	  			console.log(e);
	  		})
	  	}
	  	function onSignInFailure(t){		
	  		console.log(t);
	  	}

	  </script>
	  <script>
		/* facebook */
		  function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
		    console.log('statusChangeCallback');
		    console.log(response);                   // The current login status of the person.
		    if (response.status === 'connected') {   // Logged into your webpage and Facebook.
		      testAPI();  
		    } else {                                 // Not logged into your webpage or we are unable to tell.
		      document.getElementById('status').innerHTML = 'Please log ' +
		        'into this webpage.';
		    }
		  }
		
		
		  function checkLoginState() {               // Called when a person is finished with the Login Button.
		    FB.getLoginStatus(function(response) {   // See the onlogin handler
		      statusChangeCallback(response);
		    });
		  }
		
		
		  window.fbAsyncInit = function() {
		    FB.init({
		      appId      : '751469992906195',    // app_Id 입력
		      cookie     : true,                     // Enable cookies to allow the server to access the session.
		      xfbml      : true,                     // Parse social plugins on this webpage.
		      version    : 'v13.0'           // 최신버전인 13을 썼습니다. 사용자에 맞춰서 구버전을 써도 된다고는 하는데 특별한 일이 없다면 최신을 쓰시길 권장합니다.
		    });
		
		
		    FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
		      statusChangeCallback(response);        // Returns the login status.
		    });
		  };
		 
		  function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
		    console.log('Welcome!  Fetching your information.... ');
		    FB.api('/me', function(response) {
		      console.log('Successful login for: ' + response.name);
		      document.getElementById('status').innerHTML =
		        'Thanks for logging in, ' + response.name + '!';
		    });
		  }
		
		</script>
		
		
		<!-- The JS SDK Login Button -->
		
		<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
		</fb:login-button>
		
		<div id="status">
		</div>
		
		<!-- Load the JS SDK asynchronously -->
		<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
	  
	  
	  
</body>
</html>