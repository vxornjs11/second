<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성</title>
</head>
<body>

	<h2></h2>
	<form action="write.do" method="post">
		<table border="0">
			<tr>
				<td>이름</td>
				<td><input type="text" name="bName" size="30" > </td>

			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" size="30" > </td>

			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="bContent" rows="10" cols="50" ></textarea> </td>

			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="입력">&nbsp;&nbsp;&nbsp;<a href="list.do">목록보기</a> </td>
			</tr>
			
		
		</table>
	
	
	</form>

</body>
</html>