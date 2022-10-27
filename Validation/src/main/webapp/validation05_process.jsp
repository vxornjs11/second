<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>입력에 성공 했습니다.</h3>
	<%
		request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	%>
	
		<p>아이디 : <%=request.getParameter("id") %>
		<p>비밀번호 : <%=request.getParameter("password") %>
		<p>이름 : <%=request.getParameter("name") %>
		<p>연락처 : <%=request.getParameter("phone") %> <%=request.getParameter("phone2") %> <%=request.getParameter("phone3") %>
		<p>이메일 : <%=request.getParameter("eamil") %>
		
</body>
</html>