<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


    유저아이디 : <%=request.getAttribute("ID") %> <br>
	주소 : <%=request.getAttribute("ADD") %> <br>
	전화번호 : <%=request.getAttribute("TEL") %> <br>
	이름 : <%=request.getAttribute("NAME") %> <br>
	
	상기의 정보로 입력 되었습니다. 감사합니다.
</body>
</html>