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
  <a class="navbar-brand" href="#">PhoneCMall</a>
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
      <li class="nav-item">
        <a class="nav-link" href="#">회원목록</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          COMMNUNITY
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">NEWS</a>
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
							ProductList<span>.</span>
						</h2>
						<a href="#">상품 수정, 삭제 페이지 입니다</a>
					</div>
				</div>		
				
			</div>
		
		</div>
			
	</section>
	
	<!-- Page Add Section End -->

	
	<!-- Cart Page Section Begin -->
	<div class="cart-page">	
		<div class="shopping-method">
			<div class="container">
			
				<div class="row">
					<div class="col-lg-12">
						<div class="shipping-info"></div>
						<div class="total-info">
							<div class="total-table">
								<c:url value="/admin/modify" var="modifyUrl" />
								<form:form name="modifyForm" action="${modifyUrl}" method="POST">

									<input type="hidden" name="productid" value="${productView.productid}">												
		
									<div>
										
										<hr>
										<label>상품 번호</label>
										<span>${productView.productid}</span>	
									</div>
									
									<div>
										<label>상품 이름</label>
										<span><input type="text" size="50" name="productname"
											value="${productView.productname}"></span>	
									</div>
									
									<div>
										<label>상품 가격</label>
										<span><input type="text" size="50" name="productprice"
											value="${productView.productprice}"></span>	
									</div>
									
									<div>
										<label>상품 설명</label>
										<span><textarea rows="10" cols="80" name="productdes">${productView.productdes}</textarea></span>	
									</div>
									
									<div>
										<label>상품 재고</label>
										<span><input type="text" size="50" name="productstock"
											value="${productView.productstock}"></span>	
											<hr>
									</div>

									<tr>
										<td colspan="2"><input type="submit" class="btn btn-dark btn-sm" value="수정">
											&nbsp;&nbsp; <a
											href="delete?productid=${productView.productid}" class="btn btn-dark btn-sm">삭제</a></td>
										<hr>
									</tr>
								</form:form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Cart Page Section End -->




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