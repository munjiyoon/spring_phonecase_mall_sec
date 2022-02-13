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
<title>PhoneCMall main</title>

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
	<sec:authorize access="isAnonymous()">
		<nav class="navbar navbar-expand-lg navbar bg-warning">
			<a class="navbar-brand text-dark" href="#">PhoneCMall</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">

				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link text-muted"
						href="<c:url value="/login/loginForm" />">LOGIN</a></li>
					<li class="nav-item"><a class="nav-link text-muted"
						href="<c:url value="/add/addForm" />">JOIN</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle text-muted" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> COMMUNITY </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item"
								href="<c:url value="/community/board" />">NEWS</a> <a
								class="dropdown-item" href="#">REVIEW</a>
						</div></li>
				</ul>
	</sec:authorize>


	<sec:authorize access="isAuthenticated()">
		<form:form action="${pageContext.request.contextPath}/logout"
			method="POST">
		
			<nav class="navbar navbar-expand-lg navbar bg-warning">
				<a class="navbar-brand text-dark" href="#">PhoneCMall</a>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">

					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><span></span>
							<button class="btn btn-link text-muted">LOGOUT</button> <span>
								<li><a class="nav-link text-muted"
									href="<c:url value="/add/addForm" />">JOIN</a></li>
								<li class="nav-item text-muted">
							
								<a class="nav-link text-muted" href="<c:url value="admin/adminHome" />">ADMINHOME</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle text-muted" href="#" id="navbarDropdown"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> COMMUNITY </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item"
											href="<c:url value="/community/board" />">NEWS</a> <a
											class="dropdown-item" href="#">REVIEW</a>
									</div></li>
					</ul>
		</form:form>
	</sec:authorize>
	</div>
	</nav>

	<div id="carouselExampleFade" class="carousel slide carousel-fade"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="${pageContext.request.contextPath}/resources/eshopper/img/phone/1.PNG"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="${pageContext.request.contextPath}/resources/eshopper/img/phone/2.PNG"
					class="d-block w-100" alt="...">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleFade"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleFade"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>


	<section class="features-section spad">
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

	<div class="container text-center p-2">
		<h4>내 생애 최애템 BEST폰케이스🛒</h4>
	</div>


	<div class="container ">
		<div class="row">
			<c:forEach var="product" items="${productList}">
				<div class="col-md-4 ">

					<div class=" mb-4 text-center">
						<div class="product-img p-2"></div>
						<img
							src="${pageContext.request.contextPath}/resources/eshopper/img/phone/p3.PNG"
							alt=""> 
							<a class="text-dark font-weight-bold" href="${pageContext.request.contextPath}/main/productDetail?productid=${product.productid}">${product.productname}</a><br>
						<a class="text-dark font-weight-bold" href="${pageContext.request.contextPath}/main/productDetail?productid=${product.productid}">${product.productprice}</a>원
						

						<div class="product-img"></div><br>
						
					</div>
				</div>
			</c:forEach>
		</div>
	</div>


	<div class="container text-center p-5">
		<hr>
		<!-- Example row of columns -->
		<div class="row">
			<div class="col-md-4">
				<h5>C/S</h5>
				<p>1811-xxxx 11:00am~5:00pm</p>
				<p>점심 1pm~2pm 토/일/공휴일 휴무</p>
			</div>

			<div class="col-md-4">
				<h5>COMPANY</h5>
				<p>상호 (주)PhoneCaseMall</p>
				<p>서울특별시 금천구 벛꽃로 309</p>
				</p>
				<p>가산디지털단지 Kosmo</p>

			</div>

			<div class="col-md-4">
				<h5>BANK</h5>
				<p>농협 351-xxxx-xxxx-xx</p>
				<p>예금주 (주)폰몰</p>
			</div>

		</div>
		<div></div>
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