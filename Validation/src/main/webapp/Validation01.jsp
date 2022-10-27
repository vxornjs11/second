<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function checkForm(){
	alert("아이디 : " + document.LoginForm.id.value + "\n" +
			"비밀번호 : " + document.LoginForm.passwd.value);
	
}
</script>
<body>
	<form name="LoginForm" action="#">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="passwd">
		<p><input type="button" value="OK" onclick="checkForm()">
		
	
	</form>

</body>
</html>