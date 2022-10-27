<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         
    <%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 베이스에서 불러오기</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<body>



	<h3>주소록 명단 리스트 </h3>
	
	<%
	
	    String queryName = request.getParameter("qeury");
    String queryContent = request.getParameter("content");
    
    if(queryName == null){
    	queryName ="address";
    	queryContent = "";
    }

	request.setCharacterEncoding("utf-8");
	// ------
	    String url_mysql = "jdbc:mysql://localhost:3306/Test?severTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	    
	    String id_mysql = "root";
	    String pw_mysql = "qwer1234";
	  
	    int cnt = 0;
	    

	    String query1 = "select seq, name, tel, address, email, connection from AddressBook ";
	    String query2 = "where " + queryName + " like '%" + queryContent + "%'";
	    int Count = 0;
	   /*  PreparedStatement ps = null; */
	    try{
	    	
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	    	Statement stmt_mysql = conn_mysql.createStatement();
	    	
	    	ResultSet rs = stmt_mysql.executeQuery(query1+query2);
	%>
	
	<form action="AddressBook.jsp">
검색선택: 
 		<select name="query">
 			<option value="name"> 이름 </option>
 			<option value="tel"> 전화번호 </option>
 			<option value="address" selected = "selected"> 주소 </option>
 			<option value="connection"> 관계 </option>
 		
 		</select>&nbsp;&nbsp;&nbsp;
 		<input type="text", name="content". size="30" >
 		<input type="submit", value="검색">

</form>

	    	<table border="1"  >
	    		<tr>
	    			<th>UserId</th><th>이름</th><th>전화번호</th><th>주소</th><th>전자우편</th><th>관계</th>
	    			</tr>

	    	<%

	    	while(rs.next()){
	    		
	    		%>
				<tr>
					<td><a href="http://localhost:8080/CRUD/AddressBook2.jsp?seq=<%=rs.getInt(1)%>"><%=rs.getString(1)%></a></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(6)%></td>
				</tr>
				
		<%
		cnt++;

		}
		%>
	    	</table>
	    	<%
	    	
	    	conn_mysql.close();

	    }catch(Exception e){
	    	e.printStackTrace();
	    }
%>
	<br>
	<br>
	총 인원은 <%=cnt %>입니다.
	
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>



