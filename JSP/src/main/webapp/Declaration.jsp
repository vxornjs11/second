<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%!
    int a = 1;
	public int sum(){
	
	 a = a * 2 ;
		return a;
	}
	

%>

2 ^ 1 = <%out.println(sum() + "<br>");%>
2 ^ 2 = <%out.println(sum() + "<br>");%>
2 ^ 3 = <%out.println(sum() + "<br>");%>
2 ^ 4 = <%out.println(sum() + "<br>");%>
2 ^ 5 = <%out.println(sum() + "<br>");%>

</body>
</html>