<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<%
	String userid = request.getParameter("id");
	String strUserid = null;
	String name = null;
	String address = null;
	String tel = null;
	

	request.setCharacterEncoding("utf-8");
	%>
</script>
 <form  name="Member" action="Delete03.jsp" method="post">
		사용자 ID : <input type="text" name="id" size="10" value="<%=strUserid%>" readonly="readonly"> <br>
		성명 :  <input type="text"name="name" size="10" value="<%=name%>" readonly="readonly"><br>
		전화번호 : <input type="text"name="tel" size="15" value="<%=tel%>" readonly="readonly"> <br>
		주소: <input type="text"name="address" size="40" value="<%=address%>" readonly="readonly"><br>
		<input type="button" value="확인"  onclick="checkMember()">
	
	</form>

</body>
</html>