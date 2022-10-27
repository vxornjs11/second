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
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
session.setAttribute("ID", id);
session.setAttribute("PW", pw);
session.setAttribute("NAME", name);
%>

<form action="UserInsert_03.jsp" method="get">

<h3>약관</h3>
-----------------------------------------------<br>
<ol>
<li>회원 정보는 웹사이트의 운열을 위해서만 사용 됩니다.</li>
<li>웹사이트의 정상 운영을 방해하는 회원은 탈퇴 처리 합니다.</li>
</ol>
-----------------------------------------------<br>
위의 약관에 동의 하십니까?
<br>
<br>
<input type="radio" name="yn" value="Yes"> 동의 함
<input type="radio" name="yn" value="No"> 동의 하지 않음
<br>
<br>
<input type="submit" value="OK">

</form>


</body>
</html>