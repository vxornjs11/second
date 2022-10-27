<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> 아래의 항목을 입력한 후 확인 버튼을 누르세요</h3>
	<form action="insertADDBOOK2.jsp">
	
    성명 :	<input type="text"name="name" size="10"> <br>
	전화번호 :	<input type="text"name="tel" size="10"><br>
	주소 :	<input type="text"name="address" size="10"><br>
	전자우편 :	<input type="text"name="email" size="10"><br>
	관계 :	<input type="text"name="connection" size="10"><br>
	 <input type="submit" value="입력">
	</form>

</body>
</html>