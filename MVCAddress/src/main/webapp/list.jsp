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
<div align="center" >

	<h1 >MVC 게시판</h1>
	
	<form aaction="list.do" >

 		<select name="query">
 			<option value="name"> 이름 </option>
 			<option value="tel"> 전화번호 </option>
 			<option value="address" selected = "selected" > 주소 </option>
 			<option value="connect"> 관계 </option>
 		
 		</select>&nbsp;&nbsp;&nbsp;
 		<input type="text", name="content". size="25" >
 		<input type="submit", value="검색">

</form>

	<table border="1" > 
		<tr>
			<th>번호</th><th>이름</th><th>전화번호</th><th>주소</th><th>전자우편</th><th>관계</th>
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr>
				<td><a href="content_view.do?seq=${dto.seq}">${dto.seq }</a></td>
				<td>${dto.name }</td>
				<td>${dto.tel }</td>
				<td>${dto.address }</td>
				<td>${dto.email }</td>
				<td>${dto.connect }</td>
			</tr>
		
		</c:forEach>
		<tr>
			<td colspan="6"><a href="write_view.do">주소록 등록</a></td>
		
		</tr>
	</table>

	<div class="container">

	<div class="row">
	  <div class="col-md-3">
	    <img src="http://img.danawa.com/cp_images/service/33/3608360/b9de2e9f.jpg" alt="..." class="img-responsive img-rounded">
	  </div>  
	</div>

</div>


<p><br/></p>
<p><br/></p>
<p><br/></p>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</div>
</body>
</html>