<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<% pageContext.setAttribute("br", "\n"); %>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메인</title>
<link href="/resources/common/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/user/css/style.css" rel="stylesheet" type="text/css">
<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
<style type="text/css">
	/* header{
		padding: 20px;
		display: block;
	} */
	.scoll{
		position: relative;
	}
	#STATICMENU { margin: 0pt; padding: 0pt;  position: absolute; right: 0px; top: 0px;}
	
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
	.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
      a:link{
      	color: black;
      }
</style>
<title>한예린</title>
</head>
<body>
	
	<div class="container">
		<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
			<img class="mainIcon d-flex align-items-center col-md-3 mb-2 mb-md-0" alt="" src="/resources/user/image/icon_main_128.png" onclick="location.href='indexView';">
		
			<form class="col-12 col-md-7 mb-2 justify-content-center mb-md-0">
				<div class="input-group">
					<input type="text" class="form-control" aria-describedby="button-addon2">
					<button class="btn btn-outline-secondary" type="button" id="button-addon2" >
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
							<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
						</svg>
					</button>
				</div>
			</form>
			
			<div class="col-md-auto text-end">
				<a href="/user/loginForm" class="nav-link px-2 link-secondary">
					<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
						<path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
						<path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
						<path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
					</svg> 로그인
				</a>
			</div>
		</header>
	</div>
	
	<div class="nav bg-body container">
		<nav class="nav nav-underline" aria-label="Secondary navigation">
			<a class="nav-link active" aria-current="page" href="#">카테고리</a>
			<!-- <a class="nav-link" href="#">
				Friends
				<span class="badge bg-light text-dark rounded-pill align-text-bottom">27</span>
			</a> -->
			<a class="nav-link" href="#">가전</a>
			<a class="nav-link" href="#">컴퓨터</a>
			<a class="nav-link" href="#">태블릿</a>
			<a class="nav-link" href="#">아웃도어</a>
			<a class="nav-link" href="#">자동차</a>
			<a class="nav-link" href="#">가구</a>
			<a class="nav-link" href="#">식품</a>
			<a class="nav-link" href="#">생활</a>
		</nav>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
	 <script src="/resources/xdmin/js/validation.js"></script>
	 <script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	 <script src="/resources/common/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	 <script type="text/javascript">
	 	
	 </script>
</body>
</html>