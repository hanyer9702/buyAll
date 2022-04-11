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
      
	.navbar a {
		color: black;
	}
	
	a:link{
		color: black;
		text-decoration: none;
	}
	a:visited {
	  color : black;
	  text-decoration: none;
	}
	a:hover {
	  color : black;
	  text-decoration: none;
	}
	a:active {
	  color : black;
	  text-decoration: none;
	}
</style>
<title>한예린</title>
</head>
<body>
	
	<div class="container">
		<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
			<img class="mainIcon d-flex align-items-center col-md-3 mb-2 mb-md-0" alt="" src="/resources/user/image/icon_main_128.png" onclick="location.href='/index/indexView';">
		
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
			<c:choose>
        		<c:when test="${not empty sessSeq}">
					<div class="col-md-auto text-end">
						<a href="#" id="pop" class="nav-link px-2 link-secondary pop" data-bs-toggle="popover" data-bs-trigger="hover focus" data-bs-placement="bottom">
							<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
								<path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
								<path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
								<path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
							</svg> 
							<c:choose>
								<c:when test="${sessSeq eq 0}">
									<font id="name"></font>
								</c:when>
								<c:otherwise>
									<c:out value="${sessName}"/>
								</c:otherwise>
							</c:choose>
						</a>
					</div>
        		</c:when>
        		<c:otherwise>
					<div class="col-md-auto text-end">
						<a href="/user/loginForm" class="nav-link px-2 link-secondary">
							<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
								<path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
								<path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
								<path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
							</svg> 
							<span>로그인</span>
						
						</a>
					</div>
        		</c:otherwise>
       		</c:choose>
		</header>
	</div>
	
	<div class="navbar bg-body container">
		<nav class="navbar">
			<a class="nav-link" href="#">카테고리</a>
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
	
	<!-- loaded popover content -->
	<div id="popover-content" class="pop" style="display: none">
	  <ul class="list-group custom-popover">
	  	<c:choose>
       		<c:when test="${not empty sessSeq}">
				<c:choose>
					<c:when test="${sessClassificationCd eq 134}">
					<!-- 개인회원 -->
					    <li class="list-group-item">마이페이지</li>
					    <li class="list-group-item">주문/배송조회</li>
					    <li class="list-group-item"><a href="#" role="button" id="btnLogout" class="btnLogout" onclick="btnLogout();">로그아웃</a></li>
					</c:when>
					<c:when test="${sessClassificationCd eq 135}">
					<!-- 사업자회원 -->
						<li class="list-group-item">마이페이지</li>
					    <li class="list-group-item"><a href="/item/itemForm" role="button">상품등록</a></li>
					    <li class="list-group-item"><a href="#" role="button" id="btnLogout" class="btnLogout" onclick="btnLogout();">로그아웃</a></li>
					</c:when>
				</c:choose>
       		</c:when> 
       		<c:otherwise>
       			<!-- 개인회원 -->
			    <li class="list-group-item">마이페이지</li>
			    <li class="list-group-item">주문/배송조회</li>
			    <li class="list-group-item"><a href="#" role="button" id="btnLogout" class="btnLogout" onclick="btnLogout();">로그아웃</a></li>
       		</c:otherwise>
    	</c:choose>
	  	
	  </ul>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
	<script src="/resources/xdmin/js/validation.js"></script>
	<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<script src="/resources/common/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
		var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
		  return new bootstrap.Popover(popoverTriggerEl)
		}) 
		
		$(window).ready(function() {
		  $('[data-bs-toggle="popover"]').popover({ 
		  	trigger: "manual",
		    html: true,
		    animation: false,
		    content: function() {
		      return $('#popover-content').html();
		    }
		  })
		  .on("mouseenter", function() {
		    var _this = this;
		    $(this).popover("show");
		    $(".popover").on("mouseleave", function() {
		      $(_this).popover('hide');
		    });
		  }).on("mouseleave", function() {
		    var _this = this;
		    setTimeout(function() {
		      if (!$(".popover:hover").length) {
		        $(_this).popover("hide");
		      }
		    }, 300);
		  });
		});
		
		$(document).ready(function(){
	        $('body').on('click','.btnLogout',function(){    
	            $.ajax({
					async: true 
					,cache: false
					,type: "post"
					,url: "/member/logoutProc"
					,data : { "sessSeq" : $("#sessSeq").val(), "sessId" : $("#sessId").val()}
					,success: function(response) {
						if(response.rt == "success") {
							location.href = "/index/indexView";
						} else {
							alert("오류");
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
	        })
	    });
		
	</script>
	<script type="text/javascript">
	  $(document).ready(function() {
	    var name = ${result}.response.nickname;
	    $("#name").html(name); 
	    });
	  //location.href = "${pageContext.request.contextPath}/";
	</script>
</body>
</html>