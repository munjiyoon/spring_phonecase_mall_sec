<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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
<title>회원가입</title>
</head>

<body>
	
	<div class="container p-5">
		
		<h4 class="text-center  p-5 ">회원가입</h4>
		<h4 class="info">기본 정보</h4>
		<hr>
		

		<c:url value="/add/addUser" var="addUserUrl" />
		
		
		<form:form name="frmMember" action="${addUserUrl}" method="POST">
			<p>
				<label for="userid">아이디:</label> <input type="text" name="userid" />
			<hr>
			</p>
			<p>
				<label for="password">비밀번호 :</label> <input type="password"
					name="password" />
			<hr>
			</p>

			<p>
				<label for="phone">연락처 :</label> <input type="text" name="phone" />
			<hr>
			</p>

			<p>
				<label for="age">나이 :</label> <input type="text" name="age" />
			<hr>
			</p>

			<p>
				<label for="name">이름 :</label> <input type="text" name="name" />
			<hr>			
			</p>
			
			<div class="row">
				<div class="col text-center">
					<button type="submit" class="btn btn-dark">가입하기</button>
				</div>
			</div>

		</form:form>
	</div>

</body>
</html>
