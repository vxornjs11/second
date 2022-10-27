<%@page import="java.util.GregorianCalendar"%>
<%@page import="org.apache.jasper.el.JasperELResolver.GraalBeanELResolver"%>
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

	String date = String.format("%TF",now);
	String time = String.format("%TT",now);

%>

	오늘 시각 : <%=date %>
	오늘 시간 : <%=time %>
</body>
</html>