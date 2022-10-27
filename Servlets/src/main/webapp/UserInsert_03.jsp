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
String yn = request.getParameter("yn");
if(yn.equals("Yes")){
	response.sendRedirect("http://localhost:8080/Servlets/UserInsert_04.jsp");
} else
	response.sendRedirect("http://localhost:8080/Servlets/UserInsert_01.jsp");
%>


</body>
</html>