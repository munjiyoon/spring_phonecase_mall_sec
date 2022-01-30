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
					<h4>PhoneCMall</h4>
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
				<div class="user-access">
					<a href="#">Register</a> <a href="#" class="in">Sign in</a>
				</div>
				<nav class="main-menu mobile-menu">
					<ul>
						<li><a class="active"
							href="${pageContext.request.contextPath}/resources/eshopper/index.html">Home</a></li>
						<li><a
							href="${pageContext.request.contextPath}/resources/eshopper/categories.html">Shop</a>
							<ul class="sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/resources/eshopper/product-page.html">Product
										Page</a></li>
								<li><a
									href="${pageContext.request.contextPath}/resources/eshopper/shopping-cart.html">Shopping
										Card</a></li>
								<li><a
									href="${pageContext.request.contextPath}/resources/eshopper/check-out.html">Check
										out</a></li>
							</ul></li>
						<li><a
							href="${pageContext.request.contextPath}/resources/eshopper/product-page.html">About</a></li>
						<li><a
							href="${pageContext.request.contextPath}/resources/eshopper/check-out.html">관리자</a></li>
						<li><a
							href="${pageContext.request.contextPath}/resources/eshopper/contact.html">Contact</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	

	<!-- Hero Slider Begin -->
	<section class="hero-slider">
		<div class="hero-items owl-carousel">
			<div class="single-slider-item set-bg"
				data-setbg="${pageContext.request.contextPath}/resources/eshopper/img/phone/1.PNG">
				<div class="row">
					<div class="col-lg-12">
					</div>
				</div>
			</div>

		</div>
	</section>
	<!-- Hero Slider End -->

	<!-- Features Section Begin -->
	<section class="features-section spad">
		<!-- Features Box -->
		<div class="features-box">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="row">
							<div class="col-lg-12">
								<div class="single-box-item first-box">
									<img
										src="${pageContext.request.contextPath}/resources/eshopper/img/phone/img1.PNG"
										alt="">
								</div>
							</div>
							<div class="col-lg-12">
								<div class="single-box-item second-box">
									<img
										src="${pageContext.request.contextPath}/resources/eshopper/img/phone/img2.PNG"
										alt="">
									
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="single-box-item large-box">
							<img
								src="${pageContext.request.contextPath}/resources/eshopper/img/phone/img3.jpg"
								alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Features Section End -->

	<!-- Latest Product Begin -->
	<section class="latest-products spad">
		<div class="container">
			<div class="product-filter">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h4>내 생애 최애템 BEST폰케이스🛒</h4>
						</div>

					</div>
				</div>
			</div>
			<div class="row" id="product-list">
				<div class="col-lg-3 col-sm-6 mix all dresses bags">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/eshopper/img/phone/p1.PNG"
								alt=""></a>
							<div class="p-status">hot</div>
						</figure>
						<div class="product-text">
							<h6>버니 구름 패턴 블랙</h6>
							<p>8,900원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mix all dresses bags">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/eshopper/img/phone/p2.PNG"
								alt=""></a>
							<div class="p-status">hot</div>

						</figure>
						<div class="product-text">
							<h6>(젤리)물결 프레임 핑크</h6>
							<p>7,900원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mix all shoes accesories">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/eshopper/img/phone/p3.PNG"
								alt=""></a>
							<div class="p-status">hot</div>
						</figure>
						<div class="product-text">
							<h6>배색 케이스 롤리</h6>
							<p>12,900원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mix all shoes accesories">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/eshopper/img/phone/4.PNG"
								alt=""></a>
							<div class="p-status">hot</div>
						</figure>
						<div class="product-text">
							<h6>무광) HB 하이 버니 옐로우</h6>
							<p>8,900원</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="latest-products spad">
		<div class="container">
			<div class="product-filter">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h4>신상 내려온다! 금주 신상 확인하기🔔</h4>
						</div>

					</div>
				</div>
			</div>
			<div class="row" id="product-list">
				<div class="col-lg-3 col-sm-6 mix all dresses bags">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/eshopper/img/phone/5.PNG"
								alt=""></a>
							<div class="p-status">new</div>
						</figure>
						<div class="product-text">
							<h6>(무광) HB 파티 노랑</h6>
							<p>8,900원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mix all dresses bags">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/eshopper/img/phone/6.PNG"
								alt=""></a>
							<div class="p-status">new</div>

						</figure>
						<div class="product-text">
							<h6>(젤리) 스마일 플라워 투명</h6>
							<p>7,900원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mix all shoes accesories">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/eshopper/img/phone/7.PNG"
								alt=""></a>
							<div class="p-status">new</div>
						</figure>
						<div class="product-text">
							<h6>(카드탱크) 올리 얼굴 블랙</h6>
							<p>10,900원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mix all shoes accesories">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/eshopper/img/phone/8.PNG"
								alt=""></a>
							<div class="p-status">new</div>
						</figure>
						<div class="product-text">
							<h6>(클리어 하드) 볼따구 곰찌</h6>
							<p>9,900원</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<div class="container text-center p-5">
		<hr>
		<!-- Example row of columns -->
		<div class="row">
			<div class="col-md-4">
				<h5>C/S </h5>
				<p>1811-xxxx 11:00am~5:00pm </p>
				<p>점심 1pm~2pm 토/일/공휴일 휴무 </p>
			</div>
			
			<div class="col-md-4">
				<h5>COMPANY</h5>
				<p>상호 (주)PhoneCaseMall </p>
				<p>서울특별시 금천구 벛꽃로 309 </p></p>
				<p>가산디지털단지 Kosmo </p>

			</div>
			
			<div class="col-md-4">
				<h5>BANK</h5>
				<p>농협 351-xxxx-xxxx-xx </p>
				<p>예금주 (주)폰몰 </p>
			</div>
			
		</div>
		<div>
		</div>
		<hr>
	</div>
	







	<!-- Footer Section End -->

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