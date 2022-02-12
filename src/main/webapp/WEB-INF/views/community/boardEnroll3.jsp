<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

				<nav class="main-menu mobile-menu">
					<ul>

						<a href="${pageContext.request.contextPath}/">Home</a>&nbsp;&nbsp;
						<a href="<c:url value="/community/board" />">Community</a>
					</ul>
				</nav>

			</div>

		</div>
	</header>
	<hr>

	<div class="container text-center">
		<h4>공지📣</h4>
		<p>공지사항 입니다.</p>
	</div>

	<!-- Cart Page Section Begin -->
	<div class="container">
		<div class="shopping-method">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="shipping-info"></div>
						<div class="total-info">
							<div class="total-table">
								<table>
                           <thead>
                              <tr>
                                 <th>공지</th>
                                 <th>제목</th>
                                 <th>조회수</th>
                                 <th>작성자</th>
                              </tr>
                           </thead>
                           <tbody>
                              <c:forEach var="board" items="${list}">
                                 <tr>
                                    <td>${board.bid}</td>
                                    <!-- http://localhost:8282/ex/community/board/1 -->
                                    <td><a
                                       href="${pageContext.request.contextPath}/community/boardEnroll/${board.bid}">${board.btitle}</a>
                                    </td>

                                    <!--  <a href="productView?productid=${product.productid}">${product.productname}</a> -->

                                    
                                    <td>${board.bhit}</td>
                                    <td>${board.userid}</td>
                                    <td><a class="a-delete" data-bid='${board.bid}' href="${pageContext.request.contextPath}/community/boardEnroll/${board.bid}">삭제</a></td>
                                 </tr>
                              </c:forEach>
                              <tr class="text-center">
                                 <td colspan="5"><a href="boardWrite">공지사항 작성</a></td>
                           
                              </tr>
                           </tbody>
                        </table>
							</div>
						</div>
					</div>
				</div>
			</div>
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