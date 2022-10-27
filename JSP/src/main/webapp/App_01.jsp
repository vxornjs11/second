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
		String appPath = application.getContextPath();
		String filePath = application.getRealPath("File.txt"); // 파일경로 불러오기
		

%>

<%=appPath %><br>
<%=filePath %>


</body>
</html>