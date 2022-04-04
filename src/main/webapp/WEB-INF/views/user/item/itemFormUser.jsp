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
</style>
<title>한예린</title>
</head>
<body>
	<%@include file="../include/top.jsp"%>
	
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
					<td><label for="" class="form-label">가격</label></td>
					<td><input type="text" class="form-control" id=""></td>
				</tr>
				<tr>
					<td><label for="" class="form-label">브랜드</label></td>
					<td><input type="text" class="form-control" id=""></td>
				</tr>
				<tr>
					<td><label for="" class="form-label">배송소요일</label></td>
					<td><input type="text" class="form-control" id=""></td>
				</tr>
				<tr>
					<td><label for="" class="form-label">적립률</label></td>
					<td><input type="text" class="form-control" id=""></td>
				</tr>
				<tr>
					<td><label for="" class="form-label">카드할인</label></td>
					<td><input type="text" class="form-control" id=""></td>
				</tr>
				<tr>
					<td><label for="" class="form-label">최대구매수량</label></td>
					<td><input type="text" class="form-control" id=""></td>
				</tr>
				<tr>
					<td><label for="" class="form-label">해외배송여부</label></td>
					<td><input type="text" class="form-control" id=""></td>
				</tr>
				<tr>
					<td><label for="" class="form-label">인증정보</label></td>
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

	<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
	<script src="/resources/user/css/offcanvas.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
	<script src="/resources/xdmin/js/validation.js"></script>
	<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<script src="/resources/common/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>
</body>
</html>