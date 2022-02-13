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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
		$(document).ready(function () {
			$(".a-delete").click(function(event) {
				var con = confirm("정말 삭제하시겠습니까?")
				
				//prevendDefault()는 href로 연결해 주지 않고 
				//단순히 click에 대한 처리를 하도록 해준다.
				event.preventDefault();
				console.log("ajax 호출전");
				
				var trObj = $(this).parent().parent();
				
				console.log($(this).attr("href"));
				
				$.ajax({
					 type : "DELETE",
					 url : $(this).attr("href"),
					 success: function (result) {       
					 console.log(result); 
						if(result == "SUCCESS"){
					           //getList();
						      $(trObj).remove();  
						      	       
							}					        
					    },
					    error: function (e) {
					        console.log(e);
					    }			
				
				});	
			
			});	
		
		});
	
	</script>


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

	<div class="container">
		<div class="shopping-method">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="shipping-info"></div>
						<div class="total-info">
							<div class="total-table">
								<div class="container text-center p-3">
									<h4>공지📣</h4>
									<p>제목을 눌러 공지사항을 수정하세요</p>
								</div>
								<table>
									<thead>
										<tr>
											<th>공지</th>
											<th>제목</th>
											<th>조회수</th>
											<th>작성자</th>
											<th>삭제</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="board" items="${list}">
											<tr>
												<td>${board.bid}</td>
												<!-- http://localhost:8282/ex/community/board/1 -->
												<td><a class="text-dark"
													href="${pageContext.request.contextPath}/community/boardEnroll/${board.bid}">${board.btitle}</a>
												</td>
												<td>${board.bhit}</td>
												<td>${board.userid}</td>
												<td><a class="a-delete" data-bid='${board.bid}'
													href="${pageContext.request.contextPath}/community/boardEnroll/${board.bid}">삭제</a></td>
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