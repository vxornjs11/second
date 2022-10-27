<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
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
	request.setCharacterEncoding("utf-8"); //한글 인코딩 해주는거지
	String quantity = request.getParameter("quantity");  // 파라미터 값 가져오기
	String size = request.getParameter("size");
	String color = request.getParameter("color");
	Date date = new Date();  // 데이트 생성자 불러오기?
	Long time = date.getTime();  // 시간 생성자 불러오기??
	String fileName = time + ".txt";  //time 뒤에 .txt붙여서 불러오나봄. 아까 app_01응용하는건가
	String result;  // result 스트링 변수로 선언
	PrintWriter writer = null;
	try {
		String filePath = application.getRealPath(fileName);
		writer = new PrintWriter(filePath);
		writer.println("수량 : " + quantity);
		writer.println("크기 : " + size);
		writer.println("색상 : " + color);
		result = "success";
	} catch (IOException ioe) {
		result = "fail";
	} finally {
		try {
			writer.close();
		} catch (Exception e) {
		}
	}
	//써블릿?? 
			
	response.sendRedirect("http://localhost:8080/JSP/Cart_03.jsp?result=" + result);
	
	
	%>
	
	<input type="hidden" name="quantity" value=<%=quantity %>>
	<input type="hidden" name="size" value=<%=size %>>
	<input type="hidden" name="color" value=<%=color %>>

</body>
</html>