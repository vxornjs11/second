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
	<h4>아이디를 수정후 확인 버튼을 누르세요 </h4>
	
	<script type="text/javascript">
	function checkMember(){
		
	/* 	var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/ */
		var regExpName = /^[가-힣]*$/
		var regExpTel = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;
		var regExpaddress = /^[가-힣]*$/
		
		
		var form = document.Member
		
		/* var id = form.id.value */
		var name = form.name.value
		var tel = form.tel.value
		var address = form.address.value
		
/* 		if(!regExpId.test(id)){
			alert("아이디는 문자로 시작해 주세요")
			form.id.select()
			return
		} */
		
		if(!regExpName.test(name)){
			alert("이름은 한글만으로 입력해 주세요")
			form.name.select()
			return
		}
		
		if(!regExpTel.test(tel)){
			alert("전화번호 숫자만으로 입력해 주세요")
			form.tel.select()
			return
		}
		
		if(!regExpaddress.test(address)){
			alert("주소 입력을 확인해 주세요")
			form.address.select()
			return
		}
		
	
		form.submit()
	}
</script>
	
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
	    
	    response.sendRedirect("updateTest04.jsp");
%>

	<form  name="Member" action="updateTest03.jsp" method="post">
		사용자 ID : <input type="text" name="id" size="10" value="<%=strUserid%>" readonly="readonly"> <br>
		성명 :  <input type="text"name="name" size="10" value="<%=name%>"><br>
		전화번호 : <input type="text"name="tel" size="15" value="<%=tel%>"> <br>
		주소: <input type="text"name="address" size="40" value="<%=address%>"><br>
		<input type="button" value="수정"  onclick="checkMember()">
	
	</form>

</body>
</html>