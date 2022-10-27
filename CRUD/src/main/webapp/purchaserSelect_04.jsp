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
		request.setCharacterEncoding("utf-8");
	

    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String tel = request.getParameter("tel");
	String userid = request.getParameter("id");
    System.out.println(userid);
	String strUserid = null;
	
	// ------
	    String url_mysql = "jdbc:mysql://localhost:3306/Test?severTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	    
	    String id_mysql = "root";
	    String pw_mysql = "qwer1234";
	    
	
	    
	    PreparedStatement ps = null;
	    try{
	    	
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	    	Statement stmt_mysql = conn_mysql.createStatement();
	    	
	    	String query = "update purchaserinfo set name = ?, tel = ?, address = ? where userid = ? ";
	    	ps = conn_mysql.prepareStatement(query);
	    		ps.setString(1,name);
	    		ps.setString(2,tel);
	    		ps.setString(3,address);
	    		ps.setString(4,userid);
	    	
	    		request.setAttribute("NAME", name);
	    		request.setAttribute("TEL", tel);
	    		request.setAttribute("ADD", address);
	    		request.setAttribute("ID", userid);


	
	    	
	    	ps.executeUpdate();
	    	conn_mysql.close();
	    }catch(Exception e){
	    	e.printStackTrace();
	    }
	    	
	 
	    
		RequestDispatcher dispatcher = request.getRequestDispatcher("purchaserSelect_01.jsp"); // 어디로 보낼지 정하기
		dispatcher.forward(request, response);
	 
%>


</body>
</html>