<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>수정결과</h3>
	사용자 ID가 
	<%=session.getAttribute("ID") %> 로 바뀌었습니다. <br>
	<%=session.getAttribute("TEL") %> 로 바뀌었습니다. <br>
	<%=session.getAttribute("NAME") %> 로 바뀌었습니다. <br>
	<%=session.getAttribute("ADD") %> 로 바뀌었습니다. <br>
	<%session.invalidate(); %>
</body>
</html>