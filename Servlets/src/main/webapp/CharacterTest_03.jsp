<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");
String food = request.getParameter("food");
session.setAttribute("FOOD", food);
%>

<h1>좋아하는 동물은?</h1>
	<form action="CharacterTest_04.jsp">
	
		<input type="text" name="animal">
		<br>
		<br>
		<input type="submit" value="OK">
	
	</form>

</body>
</html>