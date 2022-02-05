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

	<div>
		<sapn>상품 번호</span> ${productView.productid} 
	</div>

	<div>
		<sapn>상품명</span> ${productView.productname} 
	</div>

	<div>
		<sapn>상품가격</span> ${productView.productprice} 
	</div>

	<div>
		<sapn>상품소개</span> ${productView.productdes} 
	</div>

	<c:url value="/main/cartInsert" var="cartUrl" />
	<p>${cartUrl}</p>
	<form:form name="cartUrl" action="${cartUrl}" method="POST">

		<input type="hidden" name="productid" value="${productView.productid}">
		<select name="amount">
			<c:forEach begin="1" end="10" var="i">
				<option value="${i}">${i}</option>
			</c:forEach>
		</select>개

		<input type="submit" value="장바구니에 담기">



	</form:form>















</body>
</html>