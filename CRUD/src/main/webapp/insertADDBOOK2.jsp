<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%@ page import = "java.sql.*" %>
    
    <%
   
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String tel = request.getParameter("tel");
    
    String email = request.getParameter("email");
    
    String connection = request.getParameter("connection");
    
    String url_mysql = "jdbc:mysql://localhost:3306/test?severTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
    
    String id_mysql = "root";
    String pw_mysql = "qwer1234";
    
    PreparedStatement ps = null;
    try{
    	
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
    	Statement stmt_mysql = conn_mysql.createStatement();
    	
    	String query = "insert into AddressBook (name,tel,address,email,connection) values (?,?,?,?,?)";
    	
    	ps = conn_mysql.prepareStatement(query);
    	ps.setString(1, name);
		ps.setString(2, tel);
		ps.setString(3, address);
		ps.setString(4, email);
		ps.setString(5, connection);
    	ps.executeUpdate();
    	conn_mysql.close();
    }catch(Exception e){
    	e.printStackTrace();
    }
    
    request.setAttribute("ID",name);
	request.setAttribute("NAME", name);
	request.setAttribute("ADD", address);
	request.setAttribute("TEL", tel);
	request.setAttribute("EMAIL", email);
	request.setAttribute("CONNECT", connection);
    
    response.sendRedirect("AddressBook.jsp");
    
    %>