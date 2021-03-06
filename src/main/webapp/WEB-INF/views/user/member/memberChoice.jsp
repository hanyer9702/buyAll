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
		height:calc(100vh)
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
			<header class="row">
				<div class="col">
					<img class="mainIcon" alt="" src="/resources/user/image/icon_main_128.png" onclick="location.href='/index/indexView';">
				</div>
				<h1 class="col d-flex justify-content-center">회원선택</h1>
			</header>
			<section style="margin-top:40px;">
				<div class="d-flex justify-content-center row " style="margin-left:auto;margin-right:auto;">
					<button type="button" class="btn btn-outline-secondary col-auto mx-4" onclick="location.href='/user/memberForm';"><div class="row align-items-center" style="width:200px;height:200px;text-align:center;"><h3 class="col">개인회원</h3></div></button>
					<button type="button" class="btn btn-outline-secondary col-auto mx-4" onclick="location.href='';"><div class="row align-items-center" style="width:200px;height:200px;text-align:center;"><h3 class="col">사업자회원</h3></div></button>
					
			 	</div>
		 	</section>
		 	<footer>
				<span class="bottom_span">Copyright © rebecca Co., Ltd. ALl Rights Reserved.</span>
			</footer>
	 	</div>
	 </div>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
	 <script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	 <script src="/resources/common/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	 <script type="text/javascript">
	 	
	 </script>
</body>
</html>