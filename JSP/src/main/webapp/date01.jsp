<%@page import="java.util.GregorianCalendar"%>
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
	GregorianCalendar now = new GregorianCalendar();
	
	String date = String.format("%TF", now); // %TF : yyyy-mm-dd 
	String time = String.format("%TT", now); // %TF : hh:mm:ss
	// Tm = 월, TM = 분
	
	

%>

	오늘 날짜 : <%= date %> <br>
	현재 시각 : <%= time %> <br>
	
	
	<%=String.format("%TY년 %Tm월 %Td일", now, now, now) %><br> 
	<%=String.format("%TH시 %TM분 %TS초", now, now, now) %><br>
	
</body>
</html>