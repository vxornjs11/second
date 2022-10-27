<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

<form  name="testform" method="post">
		사용자 ID : <input type="text" name="id" size="10" value="${ID }" readonly="readonly"> <br>
		성명 :  <input type="text"name="name" size="10" value="${NAME }"><br>
		전화번호 : <input type="text"name="tel" size="15" value="${TEL }"> <br>
		주소: <input type="text"name="address" size="40" value="${ADD }"><br>
	
	
		<input type="submit" value="수정"  onclick="action='purchaserSelect_04.jsp'"/>
		
		<input type="submit" value="삭제"  onclick="action='purchaserSelect_05.jsp'"/>
		
	
	
	</form>


</body>
</html>