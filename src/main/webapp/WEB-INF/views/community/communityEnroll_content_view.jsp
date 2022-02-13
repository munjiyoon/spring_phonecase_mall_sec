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


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	    
		$("#updateForm").submit(function(event){  //form의 id가 updateForm 인것의 submit을 누르게 되면
			
			event.preventDefault();  //원래는 action경로를 타게되지만 그것을 막고 여기서 처리하겠다
		
	        var btitle = $("#btitle").val();  // id가 btitle인 것의 값을 가져옴
	        var bcontent = $("#bcontent").val();
	        
	        var bid = $("#bid").val();
	        
	        console.log(bcontent);	        
	        console.log($(this).attr("action"));
	        
	        var form = {
	        		bid: bid,  //객체로 담음
	                bcontent: bcontent,
	                btitle: btitle
	        };       
			
			
	        console.log(JSON.stringify(form));  //form을 Json의 형태로 바꿈  json과 객체의 차이: json은 key, value에서 key와 value에 쌍따옴표가 들어감 말 그대로 string으로 바꿔줌
	        $.ajax({
			    type : "PUT",
			    url : $(this).attr("action"),
			    cache : false, //cache가 false 인 것은 안에 저장된 cache사용하지 말고 ajax안에 정의해논대로 
			    contentType:'application/json; charset=utf-8', // result에서 받아오는 contentType 지정
 			    data: JSON.stringify(form),  //클라이언트에서 서버쪽으로 보낼 때 Json으로 보내고 있다는 것
			    success: function (result) {       
					if(result == "SUCCESS"){				
						$(location).attr('href', '${pageContext.request.contextPath}/community/boardEnroll/');	//redirect			      	       
						
					}					        
			    },
			    error: function (e) {
			        console.log(e);
			    }
			})	       
	
	    }); // end submit()
	    
	}); // end ready()
	
	
	
</script>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-warning">
		<a class="navbar-brand" href="#">PhoneCMall</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="${pageContext.request.contextPath}/admin/enroll">상품등록 <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/admin/productList">상품목록</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">회원목록</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href=""
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> COMMNUNITY </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">NEWS</a> <a
							class="dropdown-item" href="#">REAVIEW</a>

					</div></li>
			</ul>
		</div>
	</nav>



	<section class="page-add cart-page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							News<span>.</span>
						</h2>
						<a href="#">공지사항 수정 페이지 입니다</a>
					</div>
				</div>

			</div>

		</div>

	</section>


	<div class="cart-page">
		<div class="shopping-method">
			<div class="container">

				<div class="row">
					<div class="col-lg-12">
						<div class="shipping-info"></div>
						<div class="total-info">
							<div class="total-table">


								<form id="updateForm"
									action="${pageContext.request.contextPath}/community/boardEnroll/${content_view.bid}">
									<input type="hidden" id="bid" name="bid"
										value="${content_view.bid}">
									<div>
										<hr>
										<label>글번호</label> ${content_view.bid}
									</div>

									<div>
										<label>제목</label> <input type="text" id="btitle" name="btitle"
											value="${content_view.btitle}">
									</div>

									<div>
										<label>내용</label> <input type="text" id="bcontent"
											name="bcontent" value="${content_view.bcontent}">
									</div>

									<div>
										<label>조회수</label> ${content_view.bhit}
									</div>

									<div>
										<label>작성자</label> ${content_view.userid}
									</div>

									<div>
										<hr>
										<td colspan="2"><input type="submit" class="btn btn-dark btn-sm" value="수정">
											&nbsp;&nbsp; 
									</div>
									<hr>
								</form>

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