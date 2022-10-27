<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
'<h1>Write File</h1>
	<form action="WriteFile_04.jsp" method="post">
		이름 : <input type="text" name="name"> <br>
		제목 : <input type="text" name="title"> <br>
		<textarea rows="5" cols="30" name="content"></textarea>
		<input type="submit" value="저장">
	</form>

</body>
</html>