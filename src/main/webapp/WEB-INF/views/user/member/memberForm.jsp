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
				<form id="memberForm" name="memberForm" action="/user/memberInst" method="post">
					<div class="guide">
						<h5 class="">아래 항목을 모두 필수로 입력해주세요.</h5>
					</div>
					<div class="row m-4 px-5 g-3">
						<hr>
						<div class="mb-3">
							<label for="" class="form-label">아이디</label>
							<input type="text" class="form-control" id="ifmmId" name="ifmmId">
						</div>
						<div class="mb-3">
							<label for="" class="form-label">비밀번호</label>
							<input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword">
						</div>
						<div class="mb-3">
							<label for="" class="form-label">비밀번호 확인</label>
							<input type="password" class="form-control" id="ifmmPasswordAgain" name="ifmmPasswordAgain">
						</div>
						<div class="mb-3">
							<label for="" class="form-label">이름</label>
							<input type="text" class="form-control" id="ifmmName" name="ifmmName" placeholder="">
						</div>
						<div class="mb-3">
							<label for="" class="form-label">이메일 주소</label>
							<input type="text" class="form-control mb-2" id="ifmeEmailFull" name="ifmeEmailFull" placeholder="이메일 주소 입력">
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
	 
	 <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>
	 <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>
	 <script type="text/javascript">
	 $( document ).ready( function () {
			$( "#memberForm" ).validate( {
				rules: {
					ifmmId: {
						required: true,
					},
					ifmmPassword: {
						required: true,
					},
					ifmmPasswordAgain: { 
						required: true,
						equalTo: "#ifmmPassword"
					},
					ifmmName: "required",
					ifmeEmailFull: {
						required: true,
						email: true
					}
				},
				messages: {
					ifmmId: {
						required: "아이디를 입력하세요."
					},
					ifmmPassword: {
						required: "비밀번호를 입력하세요"
					},
					ifmmPasswordAgain: {
						required: "비밀번호를 다시 입력하세요",
						equalTo: "비밀번호가 같지 않습니다."
					},
					ifmeEmailFull: {
						required: "이메일을 입력하세요",
						email: "이메일 형식이 맞지 않습니다."
					},
					ifmmName: "이름을 입력하세요"
				},
				errorElement: "em",
				errorPlacement: function ( error, element ) {
					// Add the `help-block` class to the error element
					error.addClass( "help-block" );

					// Add `has-feedback` class to the parent div.form-group
					// in order to add icons to inputs
					element.parents( ".col-md-4" ).addClass( "has-feedback" );

					if ( element.prop( "type" ) === "checkbox" ) {
						error.insertAfter( element.parent( "label" ) );
					} else {
						error.insertAfter( element );
					}

					// Add the span element, if doesn't exists, and apply the icon classes to it.
					if ( !element.next( "span" )[ 0 ] ) {
						$( "<span class='glyphicon glyphicon-remove form-control-feedback'></span>" ).insertAfter( element );
					}
				},
				success: function ( label, element ) {
					// Add the span element, if doesn't exists, and apply the icon classes to it.
					if ( !$( element ).next( "span" )[ 0 ] ) {
						$( "<span class='glyphicon glyphicon-ok form-control-feedback'></span>" ).insertAfter( $( element ) );
					}
				},
				highlight: function ( element, errorClass, validClass ) {
					$( element ).parents( ".col-md-4" ).addClass( "has-error" ).removeClass( "has-success" );
					$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
				},
				unhighlight: function ( element, errorClass, validClass ) {
					$( element ).parents( ".col-md-4" ).addClass( "has-success" ).removeClass( "has-error" );
					$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
				}
			} );
		} );
	 </script>
</body>
</html>