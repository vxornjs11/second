<%@page import="java.awt.Image"%>
<%@ page import="java.net.URLEncoder" %>
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
	


	int age = Integer.parseInt(request.getParameter("age"));
	


if(age>19){
	String str = URLEncoder.encode("성인","UTF-8");
	String str1 = URLEncoder.encode("가능","UTF-8");
	response.sendRedirect("http://localhost:8080/JSP/aduilt.jsp?result=" +str + "&age=" + age +"&return=" + str1);
	

}else{
	String str = URLEncoder.encode("미성년자","UTF-8");
	String str1 = URLEncoder.encode("불가능","UTF-8");
	response.sendRedirect("http://localhost:8080/JSP/aduilt.jsp?result=" +str + "&age=" + age + "&return=" + str1);
}




%>




</body>
</html>