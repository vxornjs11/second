<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>상품 선택 저장 결과</h1>

<%
String str = request.getParameter("result");
if(str.equals("success")){
	out.println("저장 되었습니다.");
}else{
	out.println("파일에 데이터를 쓸 수 없습니다.");
}
%>

</body>
</html>