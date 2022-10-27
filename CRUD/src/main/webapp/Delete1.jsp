<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	    	
	        String query = "select count(userid) from purchaserinfo where userid is null";
	    	ResultSet rs = stmt_mysql.executeQuery(query);
	    	int i =0;
	    	while(rs.next()){
	    		i = rs.getInt(1);
	    		if(i>=1){
	    			   response.sendRedirect("Delete4.jsp");
	    		}else{
	    			response.sendRedirect("Delete3.jsp");
	    		}

	    	}
	    	
	    	conn_mysql.close();
	    	
	    	
	    	
	    	
	    }catch(Exception e){
	    	 
	    	e.printStackTrace();
	    }
	   

%>



</body>
</html>