<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>관리자 페이지</title>
</head>

<body>

<h1>관리자 페이지 입니다.</h1>
         
      <div>  	
       	<a href="${pageContext.request.contextPath}/admin/enroll">상품 등록</a></td>           
      <div>
            
      <div>
         <a href="${pageContext.request.contextPath}/admin/productList">상품 목록</a></td>      
      </div>
      
      <div>   
         <a href="${pageContext.request.contextPath}/admin/enroll">회원 목록</a>        
      </div>
      
     
      
 





<h3>[<a href="<c:url value="/" />">홈</a>]</h3>





</body>
</html>