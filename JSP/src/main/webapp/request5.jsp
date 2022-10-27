<%@page import="java.util.Arrays"%>
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

	int num = Integer.parseInt(request.getParameter("num"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	int sum =0;
	double sum2 =0;

    String[] operator = request.getParameterValues("operator");
    
  	String str = Arrays.toString(operator);
%>
	
	<%

	if(str.contains("덧셈")){
		sum = num + num2;
		out.println("두 수의 덧셈은 " + sum + "입니다.");
	}
	%>
	<%

	if(str.contains("뺄셈")){
		sum = num - num2;
		out.println("두 수의 뺄셈은 " + sum + "입니다.");
	}
	%>
	<%

	if(str.contains("곱셈")){
		sum = num * num2;
		out.println("두 수의 곱셈은 " + sum + "입니다.");
	}
	%>
	<%

	if(str.contains("나눗셈")){
		sum2 = num / num2;
		out.println("두 수의 나누기는 " + sum2 + "입니다.");
	}
	%>

       
  	

</body>
</html>