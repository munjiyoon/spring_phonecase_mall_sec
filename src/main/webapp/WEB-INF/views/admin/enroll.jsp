<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>상품 등록 페이지</title>
</head>

<body>

	<h1>상품 등록 페이지 입니다.</h1>

	<c:url value="/admin/enroll" var="enrollUrl" />
	<p>${enrollUrl}</p>
	<form:form name="enrollForm" action="${enrollUrl}" method="POST">

		<p>
			<label for="productid">상품 번호</label> <input type="text"
				id="productid" name="productid" />
		</p>

		<p>
			<label for="productname">상품명</label> <input type="text"
				id="productname" name="productname" />
		</p>

		<p>
			<label for="productname">상품 가격</label> <input type="text"
				id="productprice" name="productprice" />
		</p>

		<p>
			<label for="productdes">상품 설명</label> <input type="text"
				id="productdes" name="productdes" />

		</p>

		<p>
			<label for="productstock">상품 재고</label> <input type="text"
				id="productstock" name="productstock" />
		</p>

		<button type="submit" class="btn">상품 등록</button>

	</form:form>







	<h3>
		[<a href="<c:url value="/" />">홈</a>]
	</h3>





</body>
</html>