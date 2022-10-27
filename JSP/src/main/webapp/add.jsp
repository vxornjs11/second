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
%>
	
	<%
	String a = request.getParameter("number");
	String b = request.getParameter("number2");
	
	int g = Integer.parseInt(a);
	int u = Integer.parseInt(b);
	int sum = g + u;
	
	%>
	입력한 숫자 <%= a %> 입니다! <br>
	입력한 숫자 <%= b %> 입니다!
       
  	더한 숫자는 <%= sum %> 입니다!
	
	

</body>
</html>