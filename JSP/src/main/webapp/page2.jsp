<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action="Request _03.jsp" method="get">
 

계산을 위한 숫자를 입력 하세요 <br>
    <tr>
         	<td> 숫자1 :</td>
         	<td><input type="text" name="num" size="10"  ><br></td>
	</tr>
	<tr>
         	<td> 숫자2 :</td>
         	<td><input type="text" name="num2" size="10"  ><br></td>
	</tr>
	<td> 계산방법 :  <br>
          <input type="radio" name="math" value="덧셈" checked="checked"> 덧셈 <br>
          <input type="radio" name="math" value="뺄셈"> 뺄셈 <br>
          <input type="radio" name="math" value="곱셈"> 곱셈 <br>
          <input type="radio" name="math" value="나눗셈"> 나눗셈
          
          <br>
         </td> 
	<tr>
	 <input type="submit"  value="확인">
	</tr>
 </form>

</body>
</html>