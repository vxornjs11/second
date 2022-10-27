<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 고객정보 수정</title>
</head>
<body>

	
<%
	String userid = request.getParameter("id");
	String strUserid = null;
	String name = null;
	String address = null;
	String tel = null;
	

	request.setCharacterEncoding("utf-8");
	// ------
	    String url_mysql = "jdbc:mysql://localhost:3306/Test?severTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	    
	    String id_mysql = "root";
	    String pw_mysql = "qwer1234";
	    
	    
	    PreparedStatement ps = null;
	    try{
	    	
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	    	Statement stmt_mysql = conn_mysql.createStatement();
	    	
	        String query = "select userid,name,tel,address from purchaserinfo where userid = '" + userid + "'";
	    	ResultSet rs = stmt_mysql.executeQuery(query);
	    	
	    	while(rs.next()){
	    		strUserid = rs.getString(1);
	    		name = rs.getString(2);
	    		tel = rs.getString(3);
	    		address = rs.getString(4);
	    		
	    	}
	    	
	    	conn_mysql.close();
	    	
	    	
	    	
	    	
	    }catch(Exception e){
	    	e.printStackTrace();
	    }
	    response.sendRedirect("Delete3.jsp");

%>



</body>
</html>