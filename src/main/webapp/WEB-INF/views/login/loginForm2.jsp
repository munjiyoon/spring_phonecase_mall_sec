<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/include/header.jspf"%>
<title>Login</title>
</head>
<body onload="document.f.id.focus();">
	<br>
	<br>
	<div class="container text-center">
		<h1 class="p-5">로그인 페이지</h1>
		<br>
	</div>
	<c:url value="/login" var="loginUrl" />
	<div class="container col-md-4">
		<form:form name="f" class="px-4 py-3" action="${loginUrl}"
			method="post">
			<c:if test="${param.error != null}">
				<p>아이디와 비밀번호가 잘못되었습니다.</p>
			</c:if>

			<c:if test="${param.logout != null}">
				<p>로그아웃 하였습니다.</p>
			</c:if>

			<div class="form-group">
				<label for="exampleDropdownFormEmail1">ID</label> <input type="text"
					class="form-control" name="userid" placeholder="example">
			</div>
			<div class="form-group">
				<label for="exampleDropdownFormPassword1">Password</label> <input
					type="password" class="form-control" name="password"
					placeholder="Password">
			</div>
			<div class="form-check">
				<label class="form-check-label"> <input type="checkbox"
					class="form-check-input"> ID 기억하기
				</label>
			</div>
			<%-- <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/> --%>

			<div >
				<button type="submit" class="btn btn-dark">Login</button>
			</div>


		</form:form>
		<div class="dropdown-divider"></div>
		<a class="dropdown-item" href="#">PhoneCMall에 어서  가입하세요</a> <a
			class="dropdown-item" href="#">비밀번호를 잊어버리셨나요?</a>
	</div>

</body>
</html>