<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition</title>
</head>
<body>
	<h1>Addition</h1>
	<%
	
	int sum = 0;
	int sum1 =0;
	int sumsum =0;

	/* for(int i = 2; i<9; i++){
		for(int j = 1; j<10; j++){
    int a = i*j;
			
	out.println(i + " + " + j + " = " + (a) + "<br>");
	out.println("=======" + "<br>");
		}break;
		
	} */
	
	for(int k = 1; k<=100; k++){
		sum = sum + k;
	}
	for(int j=101; j<=200; j++){
		sum1 = sum1 + j;
	}
	
	out.println("1부터 100 까지의 합" + sum + "<br>");
	out.println("1부터 200 까지의 합" + (sum1 + sum));
	%>




</body>
</html>