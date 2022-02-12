<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Yoga Studio Template">
<meta name="keywords" content="Yoga, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Violet | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/eshopper/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/eshopper/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/eshopper/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/eshopper/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/eshopper/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/eshopper/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/eshopper/css/style.css"
	type="text/css">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Search model -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="container-fluid">
			<div class="inner-header">
				<div class="logo">
					<a
						href="${pageContext.request.contextPath}/resources/eshopper/productList.jsp"><img
						src="${pageContext.request.contextPath}/resources/eshopper/img/logo.png"
						alt=""></a>
				</div>
				<div class="header-right">
					<img
						src="${pageContext.request.contextPath}/resources/eshopper/img/icons/search.png"
						alt="" class="search-trigger"> <img
						src="${pageContext.request.contextPath}/resources/eshopper/img/icons/man.png"
						alt=""> <a href="#"> <img
						src="${pageContext.request.contextPath}/resources/eshopper/img/icons/bag.png"
						alt=""> <span>2</span>
					</a>
				</div>
			</div>
		</div>
	</header>

	<!-- Header Info Begin -->
	<div class="header-info">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4">
					<div class="header-item">
						<img
							src="${pageContext.request.contextPath}/resources/eshopper/img/icons/delivery.png"
							alt="">
						<p>Free shipping on orders over $30 in USA</p>
					</div>
				</div>
				<div class="col-md-4 text-left text-lg-center">
					<div class="header-item">
						<img
							src="${pageContext.request.contextPath}/resources/eshopper/img/icons/voucher.png"
							alt="">
						<p>20% Student Discount</p>
					</div>
				</div>
				<div class="col-md-4 text-left text-xl-right">
					<div class="header-item">
						<img
							src="${pageContext.request.contextPath}/resources/eshopper/img/icons/sales.png"
							alt="">
						<p>30% off on dresses. Use code: 30OFF</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Header Info End -->
	<!-- Header End -->

	<!-- Page Add Section Begin -->
	<section class="page-add cart-page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							Admin Home<span>.</span>
						</h2>
						<a href="#">Admin Home 페이지 입니다</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Page Add Section End -->

	<div class="container">
		
		<div>
			<a href="${pageContext.request.contextPath}/">Main</a>
			<hr>
			<div>
		<div>
			<a href="${pageContext.request.contextPath}/admin/enroll">상품 등록</a>

			<hr>
			<div>

				<div>
					<a href="${pageContext.request.contextPath}/admin/productList">상품
						목록</a>

					<hr>
				</div>

				<div>
					<a href="${pageContext.request.contextPath}/admin/enroll">회원 목록</a>
					<hr>
				</div>
			</div>


			<!-- Js Plugins -->
			<script
				src="${pageContext.request.contextPath}/resources/eshopper/js/jquery-3.3.1.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/eshopper/js/bootstrap.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/eshopper/js/jquery.magnific-popup.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/eshopper/js/jquery.slicknav.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/eshopper/js/owl.carousel.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/eshopper/js/jquery.nice-select.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/eshopper/js/mixitup.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/eshopper/js/main.js"></script>
</body>

</html>