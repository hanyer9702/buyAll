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
<link href="/resources/user/css/dashboard.css" rel="stylesheet" type="text/css">

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
	.itemPhoto img{
		width:100px;
	}
	.orderInfo{
		margin-left:auto;
		margin-right: auto;
		text-align:center;
		width:100%;
		height: 300px;
		border: 5px solid gray;
		margin-top: 20px;
	}
	.sign{
		width:100px;
	}
	.finalPrice{
		color:blue;
	}
	.orderDiv{
		text-align:center;
		margin-left: auto;
		margin-right: auto;
	}
</style>
<title>한예린</title>
</head>
<body>
	<%@include file="../include/top.jsp"%>
	<form id="" name="" method="get">
		<div class="container py-3">
			<h1>주문결제</h1>
			<hr>
			<h3>배송정보</h3>
			<table class="table">
				<tr>
					<th style="width:20%;"><label for="" class="form-label">주문자 이름 *</label></th>
					<td><input type="text" class="form-control" id=""></td>
				</tr>
				<tr>
					<th><label for="" class="form-label">주문 연락처 *</label></th>
					<td><input type="text" class="form-control" id=""></td>
				</tr>
				<tr>
					<th><label for="" class="form-label">배송지 선택 *</label></th>
					<td style="padding: 15px;">
						<input class="form-check-input" type="radio" name="delivery" id="delivery"> 
						<label class="form-check-label" for="flexRadioDefault1" style="margin-right: 10px;"> 기본배송지 </label> 
						<input class="form-check-input" type="radio" name="delivery" id="delivery"> 
						<label class="form-check-label"	for="flexRadioDefault2" style="margin-right: 10px;"> 최근배송지 </label>
						<input class="form-check-input" type="radio" name="delivery" id="delivery"> 
						<label class="form-check-label"	for="flexRadioDefault3" style="margin-right: 10px;"> 새로입력 </label>
						<span class="badge bg-secondary">배송지 목록</span>
					</td>
				</tr>
				<tr>
					<th><label for="" class="form-label">받으시는 분 *</label></th>
					<td><input type="text" class="form-control" id=""></td>
				</tr>
				<tr>
					<th><label for="" class="form-label">배송 주소 *</label></th>
					<td>
						<div class="row g-3 align-items-center">
							<div class="col-auto">
								<input type="text" class="form-control" id="">
							</div>
							<div class="col-auto">
								<span class="badge bg-secondary">배송지 목록</span>
							</div>
							<div class="col-auto">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
									<label class="form-check-label" for="inlineCheckbox1">기본배송지로 선택</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
									<label class="form-check-label" for="inlineCheckbox2">배송지목록에 추가</label>
								</div>
							</div>
						</div>
						<div class="row g-3 align-items-center py-3">
							<div class="col">
								<input type="text" class="form-control" id="">
							</div>
							<div class="col">
								<input type="text" class="form-control" id="">
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<th><label for="" class="form-label">배송 연락처 *</label></th>
					<td>
						<div class="row g-3 align-items-center">
							<div class="col">
								<input type="text" class="form-control" id="hp1" name="hp1"
									size="2">
							</div>
							<div class="col-auto">-</div>
							<div class="col">
								<input type="text" class="form-control" id="hp2" name="hp2"
									size="3">
							</div>
							<div class="col-auto">-</div>
							<div class="col">
								<input type="text" class="form-control" id="hp3" name="hp3"
									size="3">
							</div>
							<div class="col">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
									<label class="form-check-label" for="inlineCheckbox1">주문 연락처와 동일</label>
								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<th><label for="" class="form-label">주문 요청사항</label></th>
					<td>
						<div class="row g-3 align-items-center">
							<div class="col-10">
								<input type="text" class="form-control" id="" placeholder="옵션을 입력하시면 판매자에게 전달됩니다.">
							</div>
							<div class="col-2">
								(150자 이내)
							</div>
						</div>
					</td>
				</tr>
			</table>
			<h3>배송 방법 선택</h3>
			<table class="table">
				<tr>
					<th rowspan="2" style="width:20%;"><label for="" class="form-label">배송방법</label></th>
					<td>
						<input class="form-check-input" type="radio" name="delivery" id="delivery"> 
						<label class="form-check-label" for="flexRadioDefault1" style="margin-right: 10px;"> 택배 무료 </label> 
					</td>
				</tr>
				<tr>
					<td>
						<span style="">해당 배송은 무료입니다.</span><br>
						<span style="color:red;">도서, 산간 지역은 추가 비용이 발생할 수 있습니다.</span>
					</td>
				</tr>
				<tr>
					<th><label for="" class="form-label">배송 요청사항 (선택)</label></th>
					<td>
						<select class="form-select" aria-label="Default select example">
							<option selected>--배송시 요청사항을 선택해주세요.--</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
					</td>
				</tr>
			</table>
			<h3>주문상품정보</h3>
			<table class="table table-bordered border-dark">
				<tr style="text-align:center;">
					<th></th>
					<th style="width:40%;">상품정보</th>
					<th>상품금액</th>
					<th>수량</th>
					<th>주문금액</th>
					<th>배송금액/판매자</th>
				</tr>
				<tr class="align-middle " style="text-align:center;">
					<td class="itemPhoto"><img src="/resources/user/image/sicon1.jpg"></td>
					<th>삼성 DDR4-3200 8GB</th>
					<td class="table-active">40,000원</td>
					<td class="table-active">1</td>
					<th class="table-active">40,000원</th>
					<th class="table-active">0원</th>
				</tr>
			</table>
			<h3>결제 정보</h3>
			<div class="orderInfo row align-items-center">
				<div class="orderDiv row g-3 align-items-center">
					<div class="col-3">
						<h5>선택상품 금액(1건)</h5>
						<h4>40,000원</h4>
					</div>
					<div class="col-1">
						<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
							<path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
						</svg>
					</div>
					<div class="col-2">
						<h5>배송금액</h5>
						<h4>0원</h4>
					</div>
					<div class="col-1">
						<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-arrow-right-circle-fill" viewBox="0 0 16 16">
							<path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
						</svg>
					</div>
					<div class="col-3">
						<h2>최종 결제금액</h2>
					</div>
					<div class="finalPrice col-2">
						<h3>40,000원</h3>
					</div>
				</div>
			</div>
			<h3 style="margin-top:10px;">결제 정보</h3>
			<table class="table">
				<tr>
					<th rowspan="2">결제방법</th>
					<td>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" id="card1" name="card" value="option1">
							<label class="form-check-label" for="card1">신용카드</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" id="card2" name="card" value="option2">
							<label class="form-check-label" for="card2">무통장입금</label>
						</div>
					</td>
				</tr>
			</table>
			<div class="row align-items-center" >
				<div class="d-grid gap-2 col-3 mx-auto" style="margin-left:auto; margin-right:auto;">
					<button type="button" class="btn btn-success">결제하기</button>
				</div>
			</div>
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