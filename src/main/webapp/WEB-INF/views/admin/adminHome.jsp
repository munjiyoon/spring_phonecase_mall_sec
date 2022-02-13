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

	<sec:authorize access="isAuthenticated()">
		<form:form action="${pageContext.request.contextPath}/logout"
			method="POST">

			<nav class="navbar navbar-expand-lg navbar bg-warning">
				<a class="navbar-brand text-dark"
					href="${pageContext.request.contextPath}/">PhoneCMall</a>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">

					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><span></span>
							<button class="btn btn-link text-dark">LOGOUT</button> <span>
								<li><a class="nav-link text-dark"
									href="<c:url value="/add/addForm" />">JOIN</a></li>
								<li class="nav-item text-dark"><a
									class="nav-link text-dark"
									href="<c:url value="admin/adminHome" />">ADMINHOME</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle text-dark" href="#"
									id="navbarDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> COMMUNITY </a>
									
								
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item"
								href="<c:url value="/community/boardEnroll" />">NEWS</a> <a
								class="dropdown-item" href="#">REVIEW</a>
						</div></li>
					</ul>
		</form:form>
	</sec:authorize>
	</div>
	</nav>




	<section class="page-add cart-page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							AdminHome<span>.</span>
						</h2>
						<a href="#">관리자 페이지 입니다</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="container">
		<div>
			<h3>AdminHome Menu</h3>
			<hr>
		</div>
		<div>
			<a class="text-muted" href="${pageContext.request.contextPath}/">Main</a>
			<hr>
			<div>
				<div>
					<a class="text-muted"
						href="${pageContext.request.contextPath}/admin/enroll">상품 등록</a>

					<hr>
					<div>

						<div>
							<a class="text-muted"
								href="${pageContext.request.contextPath}/admin/productList">상품
								목록</a>

							<hr>
						</div>

						<div>
							<a class="text-muted"
								href="${pageContext.request.contextPath}/community/boardEnroll">NEWS</a>
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