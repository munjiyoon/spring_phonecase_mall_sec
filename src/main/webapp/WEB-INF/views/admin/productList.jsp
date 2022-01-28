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
	
   <h3>상품 목록</h3>

   <table border="1">
      <tr>
         <th>상품 번호</th> 
         <th>상품명</th> 
         <th>상품 가격</th> 
         <th>상품 설명</th>
         <th>상품 재고</th>
      </tr>

      <c:forEach var="product" items="${productList}">
         <tr>
            <td>${product.productid}</td>       
            <td><a href="productView?productid=${product.productid}">${product.productname}</a></td>
            <td>${product.productprice}</td>            
            <td>${product.productdes}</td>
            <td>${product.productstock}</td>
         </tr>
      </c:forEach>
   </table>

   <h3>
      [<a href="<c:url value="/" />">홈</a>]
   </h3>





</body>
</html>