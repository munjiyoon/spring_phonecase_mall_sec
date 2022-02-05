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
					<a href="./index.html"><img src="img/logo.png" alt=""></a>
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
						<li><a
							href="${pageContext.request.contextPath}/resources/eshopper//index.html">Home</a></li>
						<li><a
							href="${pageContext.request.contextPath}/resources/eshopper//categories.html">Shop</a>
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
							href="${pageContext.request.contextPath}/resources/eshopper/check-out.html">Blog</a></li>
						<li><a
							href="${pageContext.request.contextPath}/resources/eshopper/contact.html">Contact</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>




	<!-- Product Page Section Beign -->
	<section class="product-page">
		<div class="container">

			<div class="row p-5">
				<div class="col-lg-6">
					<div class="product-slider owl-carousel">
						<div class="product-img">
							<figure>
								<img
									src="${pageContext.request.contextPath}/resources/eshopper/img/phone/p3.PNG"
									alt="">
								<div class="p-status">new</div>
							</figure>
						</div>
						<div class="product-img">
							<figure>
								<img
									src="${pageContext.request.contextPath}/resources/eshopper/img/ex1.PNG"
									alt="">
								<div class="p-status">Best</div>
							</figure>
						</div>
					</div>

				</div>
				<div class="col-lg-6">
					<div class="product-content">
						<h2>${productView.productname}</h2>

						<div class="pc-meta">
							<h5>$${productView.productprice}</h5>

						</div>
						<p>${productView.productdes}</p>


						<c:url value="/main/cartInsert" var="cartUrl" />

						<form:form name="cartUrl" action="${cartUrl}" method="POST">

							<input type="hidden" name="productid"
								value="${productView.productid}">
							<select name="amount">
								<c:forEach begin="1" end="10" var="i">
									<option value="${i}">${i}</option>
								</c:forEach>
							</select>개 &nbsp;&nbsp; 

		<input class="btn btn-dark" type="submit" value="Add to cart">


						</form:form>




					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Page Section End -->

	<!-- Related Product Section Begin -->
	<section class="related-product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="section-title">
						<h2>Related Products</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/eshopper/img/phone/p2.PNG"
								alt=""></a>
							<div class="p-status">new</div>
						</figure>
						<div class="product-text">
							<h6>Green Dress with details</h6>
							<p>$22.90</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/eshopper/img/phone/p1.PNG"
								alt=""></a>
							<div class="p-status sale">sale</div>
						</figure>
						<div class="product-text">
							<h6>Yellow Maxi Dress</h6>
							<p>$25.90</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/eshopper/img/phone/5.PNG"
								alt=""></a>
							<div class="p-status">new</div>
						</figure>
						<div class="product-text">
							<h6>One piece bodysuit</h6>
							<p>$19.90</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/eshopper/img/phone/4.PNG"
								alt=""></a>
							<div class="p-status popular">popular</div>
						</figure>
						<div class="product-text">
							<h6>Blue Dress with details</h6>
							<p>$35.50</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Related Product Section End -->



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