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

    String math = request.getParameter("math");
  
%>
	
	<%
	String a = request.getParameter("num");
	String b = request.getParameter("num2");
	String M = request.getParameter("math");
	
	double g = Integer.parseInt(a);
	double u = Integer.parseInt(b);
	double k = 0;
	
	
	switch(M) {
	case "덧셈" :
		k = g + u;
		break;
	case "뺄셈" :
		k = g - u;
		break;
	case "곱셈" :
		k = g*u;
		break;
	case "나눗셈" :
		k = g/u;
	}
	double sum = k;
	
	
	%>
       
  	두 수의 <%= math %> <%= sum %> 입니다!

  

</body>
</html>