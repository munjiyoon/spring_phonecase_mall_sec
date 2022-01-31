<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	
</script>

</head>
<body>

   <table width="500" cellpadding="0" cellspacing="0" border="1">
         <tr>
            <td> 글번호 </td>
            <td> ${content_view.bid} </td>
         </tr>
         <tr>
            <td> 제목 </td>
            <td> ${content_view.btitle} </td>
         </tr>
         <tr>
            <td> 내용 </td>
            <td> ${content_view.btitle} </td>
         </tr>
         <tr>
            <td> 작성일자 </td>
            <td> ${content_view.bdate}</td>
         </tr>
         <tr>
            <td> 조회수 </td>
            <td> ${content_view.bhit}</td>
         </tr>
         <tr>
            <td> 작성자 </td>
            <td> ${content_view.userid}</td>
         </tr>
       
    
   </table>
   
</body>
</html>
