<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1><%=request.getParameter("result") %></h1>

		
당신의 나이는 <%=request.getParameter("age") %> 이므로 주류 구매가 <%=request.getParameter("return") %>합니다!
		 		
	


</body>
</html>