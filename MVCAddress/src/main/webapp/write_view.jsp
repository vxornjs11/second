<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성</title>
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

	<h2 align="center"> 글 입력 </h2>
	<form action="write.do" method="post" >
		<table border="0"  align="center">
				<tr>
				<td>이름</td>
				<td><input type="text" name="name" size="30" > </td>

			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="tel" size="30" > </td>

			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" size="30" > </td>

			</tr>
			<tr>
				<td>전자우편</td>
				<td><input type="text" name="email" size="30" > </td>

			</tr>
			<tr>
				<td>관계</td>
				<td><input type="text" name="connect" size="30" > </td>

			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="입력">&nbsp;&nbsp;&nbsp;<a href="list.do">목록보기</a> </td>
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
	</form>

</body>
</html>