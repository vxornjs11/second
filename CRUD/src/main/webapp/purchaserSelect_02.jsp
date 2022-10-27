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
	String userid = request.getParameter("userid");
	String strUserid = null;
	String name = null;
	String address = null;
	String tel = null;
	String insertdate = null;
	

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
	    	
	        String query = "select userid,name,tel,address,insertdate from purchaserinfo where userid = '" + userid + "'";
	    	ResultSet rs = stmt_mysql.executeQuery(query);
	    	
	    	while(rs.next()){
	    		strUserid = rs.getString(1);
	    		name = rs.getString(2);
	    		tel = rs.getString(3);
	    		address = rs.getString(4);
	    		insertdate = rs.getString(5);
	    	}
	    	
	    	conn_mysql.close();
	    	
	    		request.setAttribute("NAME", name);
	    		request.setAttribute("TEL", tel);
	    		request.setAttribute("ADD", address);
	    		request.setAttribute("ID", userid);
	    		request.setAttribute("INDATE", insertdate);
	    	
	    	
	    	
	    }catch(Exception e){
	    	e.printStackTrace();
	    }
	    		
	    RequestDispatcher dispatcher = request.getRequestDispatcher("purchaserSelect_03.jsp"); // 어디로 보낼지 정하기
		dispatcher.forward(request, response);
	   
	   
%>
</body>
</html>