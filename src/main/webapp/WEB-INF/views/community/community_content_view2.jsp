<h1>공지사항 수정 페이지 입니다</h1>
   <table width="500" cellpadding="0" cellspacing="0" border="1">
      <form id="updateForm" action="${pageContext.request.contextPath}/community/boardEnroll/${content_view.bid}" >
         <input type="hidden" id="bid" name="bid" value="${content_view.bid}">
         <tr>
            <td> 글번호 </td>
            <td> ${content_view.bid} </td>
         </tr>
         <tr>
            <td> 제목 </td>
             <td> <input type="text" id="btitle" name="btitle" value="${content_view.btitle}"></td>
         </tr>
         <tr>
            <td> 내용 </td>
            <td> <input type="text" id="bcontent" name="bcontent" value="${content_view.bcontent}"></td>
         </tr>
         <tr>
            <td> 조회수 </td>
             <td> ${content_view.bhit} </td>
         </tr>
         <tr>
            <td> 작성자 </td>
            <td> ${content_view.userid} </td>
         </tr>
         <tr >
            <td colspan="2"> <input type="submit" value="수정"> &nbsp;&nbsp; 	
         </tr>
      </form>
   </table><%@ page language="java" contentType="text/html; charset=UTF-8"
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



<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-warning">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/">PhoneCMall</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="${pageContext.request.contextPath}/admin/enroll">LOGIN <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/add/addForm">JOIN</a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href=""
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> COMMNUNITY </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item"
							href="${pageContext.request.contextPath}/community/board">NEWS</a>
						<a class="dropdown-item" href="#">REAVIEW</a>

					</div></li>
			</ul>
		</div>
	</nav>


	<!-- Cart Page Section Begin -->
	<div class="container">
		<div class="shopping-method">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="shipping-info"></div>
						<div class="total-info">
							<div class="total-table">

								<div class="container text-center">
									<h4>공지📣</h4>
									<p>공지사항 입니다.</p>
								</div>
								<table>
									<thead>
										<tr>
											<td style="width: 30%">글번호</td>
											<td>${content_view.bid}</td>

										</tr>
										<tr>
											<td style="width: 30%">제목</td>
											<td>${content_view.btitle}</td>

										</tr>
										<tr>
											<td style="width: 30%">내용</td>
											<td>${content_view.bcontent}</td>

										</tr>

										<tr>
											<td style="width: 30%">조회수</td>
											<td>${content_view.bhit}</td>

										</tr>
										<tr>
											<td style="width: 30%">작성자</td>
											<td>${content_view.userid}</td>

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