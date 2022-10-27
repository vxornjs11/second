<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="list.do">홈 화면</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="write_view.do">입력하기</a></li>
      <li><a href="image.jsp">광고1</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
    </ul>
  </div>
</nav>
<body>
	<h1 align="center">MVC 게시판</h1>
	
	<table border="1" align="center">
		<tr>
			<th>번호</th><th>이름</th><th>제목</th><th>날짜</th><th>삭제</th>
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr>
				<td>${dto.bId }</td>
				<td>${dto.bName }</td>
				<td>${dto.bTitle }</td>
				<td>${dto.bDate }</td>
				<td><a href="delete.do?bId=${dto.bId}">X</a></td>
			</tr>
		
		</c:forEach>
		<tr>
			<td colspan="5"><a href="write_view.do">글작성</a></td>
		
		</tr>
	</table>


	
	  <div class="text-center">
	    <img src="http://img.danawa.com/cp_images/service/33/3608360/b9de2e9f.jpg" class="rounded" alt="..." />
	  </div>  
	

</body>
</html>