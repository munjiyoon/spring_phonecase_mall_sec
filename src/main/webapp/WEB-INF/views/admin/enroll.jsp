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

<nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <a class="navbar-brand" href="${pageContext.request.contextPath}/">PhoneCMall</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/enroll">상품등록 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/productList">상품목록</a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          COMMNUNITY
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/community/boardEnroll">NEWS</a>
          <a class="dropdown-item" href="#">REAVIEW</a>
        
        </div>
      </li>
    </ul>
  </div>
</nav>

	


	<section class="page-add cart-page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							ProductEnroll<span>.</span>
						</h2>
						<a href="#">상품 등록 페이지 입니다</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Page Add Section End -->

	<!-- Cart Total Page Begin -->
	<section class="cart-total-page spad">
		<div class="container">

			<c:url value="/admin/enroll" var="enrollUrl" />

			<form:form name="enrollForm" class="checkout-form"
				action="${enrollUrl}" method="POST">

				<div class="row">
					<div class="col-lg-12">
						<h3>Product register</h3>
					</div>
					<div class="col-lg-9">
						<div class="row">
							<div class="col-lg-2">
								<p class="in-name">상품번호*</p>
							</div>
							<div class="col-lg-5">
								<input type="text" id="productid" name="productid">
							</div>


						</div>
						<div class="row">
							<div class="col-lg-2">
								<p class="in-name">상품명*</p>
							</div>
							<div class="col-lg-10">
								<input type="text" id="productname" name="productname">
							</div>
						</div>

						<div class="row">
							<div class="col-lg-2">
								<p class="in-name">상품가격*</p>
							</div>
							<div class="col-lg-10">
								<input type="text" id="productprice" name="productprice">
							</div>
						</div>

						<div class="row">
							<div class="col-lg-2">
								<p class="in-name">상품설명*</p>
							</div>
							<div class="col-lg-10">
								<input type="text" id="productdes" name="productdes">
							</div>
						</div>

						<div class="row">
							<div class="col-lg-2">
								<p class="in-name">상품재고*</p>
							</div>
							<div class="col-lg-10">
								<input type="text" id="productstock" name="productstock">
								
								
							</div>
						</div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-dark btn-sm">상품 등록</button>

						
						
						

			</form:form>
		</div>

		</div>

		</div>

	</section>
	<!-- Cart Total Page End -->






	<!-- Js Plugins -->
	<script
		src="${pageContext.request.contextPath}/resources/eshopper/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/eshopper/js/bootstrap.min.js"></script>
	<script>
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