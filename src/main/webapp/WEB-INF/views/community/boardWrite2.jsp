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
	
   <h1>공지사항 등록 페이지 입니다.</h1>

   <c:url value="/community/write" var="writeUrl" />
   <p>${writeUrl}</p>
   <form:form name="writeForm" action="${writeUrl}" method="POST">
    
      <p>
         <label for="btitle">제목</label> <input type="text" id="btitle" name="btitle" />
      </p>
      
      <p>
         <label for="bcontent">내용</label> <input type="text" id="bcontent" name="bcontent" />
      </p>
       
      <button type="submit" class="btn">공지사항 등록</button>
   </form:form>


</body>
</html>