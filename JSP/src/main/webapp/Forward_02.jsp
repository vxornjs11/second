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
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	request.setAttribute("ADD", num1 + num2);
	request.setAttribute("SUB", num1 - num2);
	request.setAttribute("MUL", num1 * num2);
	request.setAttribute("DIV", (double)num1 / num2);
	request.setAttribute("TEST", "대한민국");
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("Forward_03.jsp"); // 어디로 보낼지 정하기
	dispatcher.forward(request, response);
	%>


</body>
</html>