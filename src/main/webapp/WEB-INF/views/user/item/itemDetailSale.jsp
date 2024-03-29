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
	#STATICMENU { margin: 0pt; padding: 0pt;  position: absolute; right: 0px; top: 0px;}
	/* a:link {
	color: #353535;
	text-decoration: none;
	}
	
	a:visited {
		color: #353535;
		text-decoration: none;
	} */
	
	
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
		width:95%;
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
	.itemImg img{
		width:95%;
		float:left;
	}
	.middle{
		float:left;
	} 
	 div.vertical-line{
      width: 1px; /* Line width */
      background-color: gray; /* Line color */
      height: 100%; /* Override in-line if you want specific height. */
      /* float: left; */ /* Causes the line to float to left of content.
        You can instead use position:absolute or display:inline-block
        if this fits better with your design */
    }
    .price img{
    	width:100px;
    	height:40px;
    }
</style>
<title>한예린</title>
</head>
<body>
	<%@include file="../include/top.jsp"%>
	<div class="container py-3">
		<h3>삼성전자 DDR4-3200 (8GB)</h3>
		<div>
			<!-- <div>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
					<path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
				</svg>
				<span>관심</span>
			</div> -->
		</div>
		<hr>
		<div class="row g-5">
			<div class="itemImg col-4">
				<img src="/resources/user/image/sicon1.jpg">
			</div>
			<div class="col-6">
				<div class="row pt-2">
					<span class="col-2">사은품</span>
					<span class="col-auto">키보드+마우스+멀티탭</span>
				</div>
				<div class="row pt-2">
					<span class="col-2">구매혜택</span>
					<a href="" class="col-auto">이달의 신용카드 혜택</a>
				</div>
				<div class="row pt-2">
					<span class="col-2">배송방법</span>
					<span class="col-auto">당일배송 | 무료배송 | 퀵서비스 | 직접수령 | 안전배송</span>
				</div>
				<div class="row pt-2">
					<span class="col-2">주문수량</span>
					<input type="number" class="col-auto mx-3" min=1 value="1">
				</div>
				<hr>
				<div class="row pt-1">
					<span class="col-3">판매가</span>
					<h4 class="col-5 d-flex justify-content-end"><span>500,000원</span></h4>
				</div>
				<div class="row pt-1">
					<span class="col-3">사양변경</span>
					<h4 class="col-5 d-flex justify-content-end"><span>0건</span></h4>
					<h6 class="col-auto"><span class="badge bg-info text-dark">사양 변경하기</span></h6>
				</div>
				<div class="row pt-1">
					<span class="col-3">판매가</span>
					<h4 class="col-5 d-flex justify-content-end"><span>0원</span></h4>
				</div>
				<hr>
				<div class="row pt-2">
					<h4 class="col-4"><span>총 합계금액</span></h4>
					<h4 class="col-4 d-flex justify-content-end"><span>500,000원</span></h4>
				</div>
				<div class="row">
					<button type="button" class="col-3 mx-2 btn btn-outline-dark">관심상품</button>
					<button type="button" class="col-3 mx-2 btn btn-outline-danger">장바구니</button>
					<button type="button" class="col-4 mx-2 btn btn-outline-success" onclick="location.href='/order/orderForm';">구매하기</button>
				</div>
			</div>
			<div class="col-2" style="background-color:gray;">
				
			</div>
		</div>
	</div>
	
	<div class="container sticky-top" style="position: sticky;" data-bs-spy="scroll" data-bs-target="#navbar-example">
		<nav id="navbar-example "  class="navbar navbar-light justify-content-center" style="background-color: #e3f2fd;">
			<ul class="nav nav-pills">
				<li class="nav-item px-5">
					<h3><a class="nav-link active" href="#scrollspyHeading1">상품사양변경</a></h3>
				</li>
				<li class="nav-item px-5">
					<h3><a class="nav-link" href="#scrollspyHeading2">상품정보</a></h3>
				</li>
				<li class="nav-item px-5">
					<h3><a class="nav-link" href="#scrollspyHeading3">구매후기(0)</a></h3>
				</li>
			</ul>
		</nav>
		<div data-bs-spy="scroll" data-bs-target="#navbar-example" data-bs-offset="0" class="scrollspy-example" tabindex="0" style="overflow-y: scroll; height: 800px;">
			<div id="scrollspyHeading1">
				
			</div>
			<div id="scrollspyHeading2" class="container pt-5">
				<div>
					<h1>상품 상세정보</h1>
					<hr>
					
				</div>
				<div class="justify-content-center">
					<div style=" text-align:center;" class="justify-content-center">
						<img src="/resources/user/image/item_detail.jpg">
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
	<script src="/resources/user/css/dashboard.js"></script>
	<script src="/resources/user/css/offcanvas.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
	 <script src="/resources/xdmin/js/validation.js"></script>
	 <script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	 <script src="/resources/common/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	 <script type="text/javascript">
		var scrollSpy = new bootstrap.ScrollSpy(document.body, {
			target: '#navbar-example'
		})
	</script>
</body>
</html>