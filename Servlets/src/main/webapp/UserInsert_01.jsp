<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="UserInsert_02.jsp">

		<h3>개인 정보를 입력하세요.</h3>

		<table>

			<tr>
				<td>아이디 :</td>
				<td><input type="text" name="id"></td>
			</tr>

			<tr>
				<td>패스워드 :</td>
				<td><input type="password" name="pw"></td>
			</tr>

			<tr>
				<td>이름 :</td>
				<td><input type="text" name="name"></td>
			</tr>


		</table>

		<input type="submit" value="OK">

	</form>

</body>
</html>