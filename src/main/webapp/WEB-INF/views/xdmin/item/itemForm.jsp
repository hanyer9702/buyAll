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
<title></title>
<link href="/resources/common/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/user/css/style.css" rel="stylesheet" type="text/css">
<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
<link href="/resources/user/css/headers.css" rel="stylesheet" type="text/css">
<link href="/resources/user/css/offcanvas.css" rel="stylesheet" type="text/css">

<style type="text/css">
	/* header{
		padding: 20px;
		display: block;
	} */
	.scoll{
		position: relative;
	}
	#STATICMENU { margin: 0pt; padding: 0pt;  position: absolute; right: 0px; top: 0px;}
	a:link {
	color: #353535;
	text-decoration: none;
	}
	
	a:visited {
		color: #353535;
		text-decoration: none;
	}
	
	a:hover {
		text-decoration: underline;
	}
	.leftCol{
		text-align: center;
	}
	.leftCol img{
	position: relative;
	width: 200px;
	height: 200px;
	top: 5px;
	border-radius: 50%;
	}
	.rightCol{
		width: 150px;
		float: left;
	}
	td, th{
		white-space:nowrap;
		word-break:nowrap;
	}
	.circle{
		width: 60px;
		height: 60px;
	}
	.circle img{
		top: 4px;
		left: 4px;
	}
	header{
		padding: 20px;
		display: block;
	}
	section{
		padding: 10px;
	}
	h3{
		text-align: center;
	}
	.middle_sec{
		border: 1px solid #BDBDBD;
		margin: 5px;
		padding: 10px;
	}
	.middle_sec div{
		padding-bottom: 5px;
	}
	.modalM{
		display:none;
	}
	/* h1{
		font-size: 3rem;
	}
	h5{
		font-size: 2rem;
	} */
	@media screen and (max-width:540px){
		h5{
			display:none;
		}
		h1{
			font-size:20px;
		}
		.circle{
		width: 45px;
		height: 45px;
		}
		.circle img{
			top: 3px;
			left: 4px;
			width: 35px;
			height: 35px;
		}
		.middle_sec{
			display: none;
		}
		.modalM{
			display: block;
			text-align: center;
		}
		.modalBtn{
			display: inline;
			margin-left: auto;
			margin-right: auto;
		}
	}
</style>
<title>한예린</title>
</head>
<body>
	
	<div>
		<header class="container-fluid">
	 		
	 		<div class="row">
	 			<div class="col-11 col-sm-6">
	 				<img style="max-width:15%;" class="mainIcon" alt="" src="../../images/admin/icon_main_128.png" onclick="location.href='';">
		 			<h1 style="display: inline-block; padding-left: 10px;">Rebecca Company</h1>
	 			</div>
	 			<div class="col-1 col-sm-4 offset-sm-2">
	 				<div style="float: right; max-length:20%; display: inline-block; padding-left: 10px;">
		 				<h5>icebear(manager)</h5>
		 				<h5>administrator</h5>
		 			</div>
	 				<div class="circle" style="float: right;">
	 				<img alt="" src="../../images/user/icebear.jpg">
		 			</div>
	 			</div>
	 		</div>
	 	</header>
	 	
	 	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="#">Navbar</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarNav">
		      <ul class="navbar-nav">
		        <li class="nav-item">
			    <a class="nav-link active" aria-current="page" href="#">Home</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="./member/memberList.html">회원관리</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="./itemFormAdmin.html">상품관리</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">배송관리</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">시스템관리</a>
				  </li>
		      </ul>
		    </div>
		  </div>
		</nav>
	<form id="" name="" method="get">
		<div class="container py-3">
			<h1>상품등록</h1>
			<hr>
			<h3>상품정보</h3>
			<table class="table">
				<tr>
					<td><label for="" class="form-label">상품명</label></td>
					<td><input type="text" class="form-control" id=""></td>
				</tr>
				<tr>
					<td><label for="" class="form-label">제조회사</label></td>
					<td><input type="text" class="form-control" id=""></td>
				</tr>
				<tr>
					<td><label for="" class="form-label">항목표시</label></td>
					<td class="row align-items-center">
						<div class="col-auto">
							<select class="form-select">
									<option selected>기간</option>
									<option value="1">1년</option>
									<option value="2">3년</option>
									<option value="3">5년</option>
									<option value="4">10년</option>
									<option value="5">탈퇴시</option>
							</select>
						</div>
						<div class="col-auto">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
								<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
							</svg>
						</div>
						<div class="col-auto">
							<select class="form-select">
									<option selected>기간</option>
									<option value="1">1년</option>
									<option value="2">3년</option>
									<option value="3">5년</option>
									<option value="4">10년</option>
									<option value="5">탈퇴시</option>
							</select>
						</div>
						<div class="col-auto">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
								<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
							</svg>
						</div>
						<div class="col-auto">
							<select class="form-select">
									<option selected>기간</option>
									<option value="1">1년</option>
									<option value="2">3년</option>
									<option value="3">5년</option>
									<option value="4">10년</option>
									<option value="5">탈퇴시</option>
							</select>
						</div>
					</td>
				</tr>
			</table>
			<button type="button" class="btn btn-primary">이미지첨부</button>
			<button type="button" class="btn btn-success float-end">등록</button>
		</div>
	</form>

	<script src="/resources/user/css/offcanvas.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
	<script src="/resources/xdmin/js/validation.js"></script>
	<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<script src="/resources/common/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
			
	</script>
</body>
</html>