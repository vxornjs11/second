<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "java.sql.*" %>



    <%
    String userid = request.getParameter("userid");
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String tel = request.getParameter("tel");
    
    String url_mysql = "jdbc:mysql://localhost:3306/Test?severTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
    
    String id_mysql = "root";
    String pw_mysql = "qwer1234";
    
    PreparedStatement ps = null;
    try{
    	
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
    	Statement stmt_mysql = conn_mysql.createStatement();
    	
    	String query = "insert into purchaserinfo (userid,name,tel,address,insertdate) values (?,?,?,?,now())";
    	
    	ps = conn_mysql.prepareStatement(query);
    	ps.setString(1, userid);
		ps.setString(2, name);
		ps.setString(3, address);
		ps.setString(4, tel);
		
    	ps.executeUpdate();
    	conn_mysql.close();
    }catch(Exception e){
    	e.printStackTrace();
    }
    
    request.setAttribute("ID",userid);
	request.setAttribute("NAME", name);
	request.setAttribute("ADD", address);
	request.setAttribute("TEL", tel);
	
    

	RequestDispatcher dispatcher = request.getRequestDispatcher("Test03.jsp"); // 어디로 보낼지 정하기
	dispatcher.forward(request, response);
    
    %>


