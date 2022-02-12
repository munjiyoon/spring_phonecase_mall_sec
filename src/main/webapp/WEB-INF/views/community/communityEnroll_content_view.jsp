<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	    
		$("#updateForm").submit(function(event){  //form의 id가 updateForm 인것의 submit을 누르게 되면
			
			event.preventDefault();  //원래는 action경로를 타게되지만 그것을 막고 여기서 처리하겠다
		
	        var btitle = $("#btitle").val();  // id가 btitle인 것의 값을 가져옴
	        var bcontent = $("#bcontent").val();
	        
	        var bid = $("#bid").val();
	        
	        console.log(bcontent);	        
	        console.log($(this).attr("action"));
	        
	        var form = {
	        		bid: bid,  //객체로 담음
	                bcontent: bcontent,
	                btitle: btitle
	        };       
			
			
	        console.log(JSON.stringify(form));  //form을 Json의 형태로 바꿈  json과 객체의 차이: json은 key, value에서 key와 value에 쌍따옴표가 들어감 말 그대로 string으로 바꿔줌

	        $.ajax({
			    type : "PUT",
			    url : $(this).attr("action"),
			    cache : false, //cache가 false 인 것은 안에 저장된 cache사용하지 말고 ajax안에 정의해논대로 
			    contentType:'application/json; charset=utf-8', // result에서 받아오는 contentType 지정
 			    data: JSON.stringify(form),  //클라이언트에서 서버쪽으로 보낼 때 Json으로 보내고 있다는 것
			    success: function (result) {       
					if(result == "SUCCESS"){				
						$(location).attr('href', '${pageContext.request.contextPath}/community/boardEnroll/');	//redirect			      	       
						
					}					        
			    },
			    error: function (e) {
			        console.log(e);
			    }
			})	       
	
	    }); // end submit()
	    
	}); // end ready()
	
	
	
</script>



</head>
<body>
	<h1>공지사항 수정 페이지 입니다</h1>
   <table width="500" cellpadding="0" cellspacing="0" border="1">
      <form id="updateForm" action="${pageContext.request.contextPath}/community/boardEnroll/${content_view.bid}" >
         <input type="hidden" id="bid" name="bid" value="${content_view.bid}">
         <tr>
            <td> 글번호 </td>
            <td> ${content_view.bid} </td>
         </tr>
         <tr>
            <td> 제목 </td>
             <td> <input type="text" id="btitle" name="btitle" value="${content_view.btitle}"></td>
         </tr>
         <tr>
            <td> 내용 </td>
            <td> <input type="text" id="bcontent" name="bcontent" value="${content_view.bcontent}"></td>
         </tr>
         <tr>
            <td> 조회수 </td>
             <td> ${content_view.bhit} </td>
         </tr>
         <tr>
            <td> 작성자 </td>
            <td> ${content_view.userid} </td>
         </tr>
         <tr >
            <td colspan="2"> <input type="submit" value="수정"> &nbsp;&nbsp; 	
         </tr>
      </form>
   </table>
   
</body>
</html>