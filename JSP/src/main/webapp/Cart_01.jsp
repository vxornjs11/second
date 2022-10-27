<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="Cart_02.jsp" method="get">

수량  : <input type="text" name="quantity" size="5"> <br>

크기  : 

대 <input type="radio" name="size" value="Large" checked="checked" >
중 <input type="radio" name="size" value="Medium"  >
소 <input type="radio" name="size" value="Small"  ><br>

색상
<select name="color">
<option>베이지</option>
<option>브라운</option>
<option>카키</option>

</select>
<br>
<input type="submit" value="저장">




</form>

</body>
</html>