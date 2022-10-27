<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<h3> Database삭제을 위한 테스트</h3>
	<form name="Member" action="Delete02.jsp" method="post">
	유저아이디 : <input type="text" name="id" size="5">
	<input type="submit" value="OK" onclick="checkMember()">

	</form>
 <%response.sendRedirect("Delete1.jsp"); %>
</body>
</html>