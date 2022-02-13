<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
	


	<table>
		<thead>
			<tr>
				<th>공지</th>
				<th>제목</th>
				<th>조회수</th>
				<th>작성자</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="board" items="${list}">
				<tr>
					<td>${board.bid}</td>
					<!-- http://localhost:8282/ex/community/board/1 -->
					<td><a
						href="${pageContext.request.contextPath}/community/boardEnroll/${board.bid}">${board.btitle}</a>
					</td>

					<!--  <a href="productView?productid=${product.productid}">${product.productname}</a> -->


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

</body>
</html>