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
<title>로그인</title>
<link href="/resources/common/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/user/css/style.css" rel="stylesheet" type="text/css">
<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
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
		padding: 40px;
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
		height:calc(240vh - vh)
	}
	.ad{
		width: 300px;
		cursor: pointer;
	}
	.guide{
		margin-left:auto;
		margin-right: auto;
		text-align:center;
		width:85%;
		height: 60px;
		margin-top: 20px;
		padding-top: 17px;
		background-color: #D4F4FA;
	}
	.guide h5{
		color: #0054FF;
	}
	.defaultCheck{
		color:red;
	}
	.choiceCheck{
		color:blue;
	}
</style>
</head>
<body>
	<div class="top_body">
		<div class="middle_body">
			<header class="row">
				<div class="col">
					<img class="mainIcon" alt="" src="/resources/user/image/icon_main_128.png" onclick="location.href='';">
				</div>
				<h1 class="col d-flex justify-content-center">회원가입</h1>
			</header>
			<section>
				<form id="memberForm" name="memberForm" action="/user/memberInst" method="get">
					<div class="guide">
						<h5 class="">아래 항목을 모두 필수로 입력해주세요.</h5>
					</div>
					<div class="row m-4 px-5 g-3">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="checkboxAll" name="checkboxAll">
							<label class="form-check-label" for="">
								<h5>약관 모두 동의하기</h5>
							</label> 
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="" name="checkboxSeq">
							<label class="form-check-label" for="">
								만 14세 이상입니다. <span class="defaultCheck">(필수)</span>
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="1" id="ifmmServiceConsentNy" name="checkboxSeq">
							<label class="form-check-label" for="">
								서비스 이용 약관 <span class="defaultCheck">(필수)</span>
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="1" id="ifmmPersonalConsentNy" name="checkboxSeq">
							<label class="form-check-label" for="">
								개인정보 수집 및 이용 <span class="defaultCheck">(필수)</span>
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="1" id="ifmmEmailConsentNy" name="checkboxSeq">
							<label class="form-check-label" for="">
								이벤트/쇼핑혜택 이메일 수신 <span class="choiceCheck">(선택)</span>
							</label>
						</div>
					</div>
					<div class="row m-4 px-5 g-3">
						<hr>
						<div class="mb-3">
							<label for="" class="form-label">아이디</label>
							<input type="text" class="form-control" id="ifmmId" name="ifmmId" placeholder="영문 4자 이상, 최대 20자">
						</div>
						<div class="mb-3">
							<label for="" class="form-label">비밀번호</label>
							<input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword" placeholder="숫자, 영문, 특수문자 포함 최소 8자 이상">
						</div>
						<div class="mb-3">
							<label for="" class="form-label">비밀번호 확인</label>
							<input type="password" class="form-control" id="" name="ifmmPasswordAgain" placeholder="숫자, 영문, 특수문자 포함 최소 8자 이상">
						</div>
						<div class="mb-3">
							<label for="" class="form-label">이름</label>
							<input type="text" class="form-control" id="ifmmName" name="ifmmName" placeholder="">
						</div>
						<div class="mb-3">
							<label for="" class="form-label">닉네임</label>
							<input type="text" class="form-control" id="ifmmNickname" name="ifmmNickname" placeholder="한글 8자, 영문 16자까지 가능">
						</div>
						<div class="mb-3">
							<label for="" class="form-label">이메일 주소</label>
							<input type="text" class="form-control mb-2" id="ifmeEmailFull" name="ifmeEmailFull" placeholder="이메일 주소 입력">
							<span style="font-size:13px;">가입 완료를 위한 이메일 인증이 진행되니 정확한 이메일 주소를 입력해주시기 바랍니다.</span>
						</div>
					</div>
					<div class="d-grid gap-2 col-9 mx-auto" style="height:50px;">
						<button class="btn btn-secondary" type="submit">회원가입</button>
					</div>
				</form>
			</section>
			<footer>
				<span class="bottom_span">Copyright © rebecca Co., Ltd. ALl Rights Reserved.</span>
			</footer>
		 </div>
	 </div>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
	 <script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	 <script src="/resources/common/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	 <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	 <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
	 <script type="text/javascript">
	 
	 	$("#checkboxAll").click(function(){
			if($("#checkboxAll").is(":checked")) $("input[name=checkboxSeq]").prop("checked",true);
			else $("input[name=checkboxSeq]").prop("checked",false);
		});
	 	
	 	jQuery.validator.setDefaults({
	 		  debug: true,
	 		  success: "valid"
	 		});
	 		$( "#memberForm" ).validate({
	 		  rules: {
	 			 ifmeEmailFull: {
	 		      required: true,
	 		      email: true
	 		    }
	 		  }
	 		});
	 	
	 </script>
</body>
</html>