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
    String deleteDate = null;
	String userid = request.getParameter("id");
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
	    	
	    	String query = "delete from purchaserinfo where userid = '" + userid +"' and delete_date is null ";
	    	ps = conn_mysql.prepareStatement(query);
	    		ps.setString(1,userid);
	    	
	    	
	    		session.setAttribute("ID", userid);
	    		session.setAttribute("TEL", tel);
	    		session.setAttribute("ADD", address);
	    		session.setAttribute("NAME", name);

	
	    	
	    	ps.executeUpdate();
	    	conn_mysql.close();
	    }catch(Exception e){
	    	e.printStackTrace();
	    }
	    	
	 
	    
	    response.sendRedirect("Delete04.jsp");

%>


	

</body>
</html>