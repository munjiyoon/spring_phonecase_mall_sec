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
	    
		$("#updateForm").submit(function(event){  //form??? id??? updateForm ????????? submit??? ????????? ??????
			
			event.preventDefault();  //????????? action????????? ??????????????? ????????? ?????? ????????? ???????????????
		
	        var btitle = $("#btitle").val();  // id??? btitle??? ?????? ?????? ?????????
	        var bcontent = $("#bcontent").val();
	        
	        var bid = $("#bid").val();
	        
	        console.log(bcontent);	        
	        console.log($(this).attr("action"));
	        
	        var form = {
	        		bid: bid,  //????????? ??????
	                bcontent: bcontent,
	                btitle: btitle
	        };       
			
			
	        console.log(JSON.stringify(form));  //form??? Json??? ????????? ??????  json??? ????????? ??????: json??? key, value?????? key??? value??? ??????????????? ????????? ??? ????????? string?????? ?????????
	        $.ajax({
			    type : "PUT",
			    url : $(this).attr("action"),
			    cache : false, //cache??? false ??? ?????? ?????? ????????? cache???????????? ?????? ajax?????? ?????????????????? 
			    contentType:'application/json; charset=utf-8', // result?????? ???????????? contentType ??????
 			    data: JSON.stringify(form),  //????????????????????? ??????????????? ?????? ??? Json?????? ????????? ????????? ???
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
					href="${pageContext.request.contextPath}/admin/enroll">???????????? <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/admin/productList">????????????</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">????????????</a></li>
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
						<a href="#">???????????? ?????? ????????? ?????????</a>
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
										<label>?????????</label> ${content_view.bid}
									</div>

									<div>
										<label>??????</label> <input type="text" id="btitle" name="btitle"
											value="${content_view.btitle}">
									</div>

									<div>
										<label>??????</label> <input type="text" id="bcontent"
											name="bcontent" value="${content_view.bcontent}">
									</div>

									<div>
										<label>?????????</label> ${content_view.bhit}
									</div>

									<div>
										<label>?????????</label> ${content_view.userid}
									</div>

									<div>
										<hr>
										<td colspan="2"><input type="submit" class="btn btn-dark btn-sm" value="??????">
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