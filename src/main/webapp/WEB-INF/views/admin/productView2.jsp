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
<title>상품 수정,삭제 페이지</title>
</head>

<body>

	<h3>상품 수정,삭제 페이지</h3>

	<table width="500" cellpadding="0" cellspacing="0" border="1">
 	
		<c:url value="/admin/modify" var="modifyUrl" />
		<p>${modifyUrl}</p>
		<form:form name="modifyForm" action="${modifyUrl}" method="POST">

				<input type="hidden" name="productid"
					value="${productView.productid}">

				<tr>
					<td>상품 번호</td>
					<td>${productView.productid}</td>
				</tr>

				<tr>
					<td>상품명</td>3
					<td><input type="text" name="productname"
						value="${productView.productname}"></td>
				</tr>

				<tr>
					<td>상품 가격</td>
					<td><input type="text" name="productprice"
						value="${productView.productprice}"></td>
				</tr>

				<tr>
					<td>상품 설명</td>
					<td><textarea rows="10" name="productdes">${productView.productdes}</textarea></td>
				</tr>

				<tr>
					<td>상품 재고</td>
					<td><input type="text" name="productstock"
						value="${productView.productstock}"></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="수정"> &nbsp;&nbsp; 
						<a href="delete?productid=${productView.productid}">삭제</a>
					</td>
				</tr>
			</form:form>
	</table>

	<h3>
		[<a href="<c:url value="/" />">홈</a>]
	</h3>
	
	



</body>
</html>