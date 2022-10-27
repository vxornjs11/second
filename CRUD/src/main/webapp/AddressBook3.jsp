<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<body>
	<script type="text/javascript">
	function checkMember(){
		
		var regExpconnection = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/
		var regExpName = /^[가-힣]*$/
		var regExpTel = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;
		var regExpaddress = /^[가-힣]*$/
		
		
		var form = document.testform
		
		 var connection = form.connection.value */
		var name = form.name.value
		var tel = form.tel.value
		var address = form.address.value
		
		if(!regExpId.test(connection)){
			alert("관계는 문자로 시작해 주세요")
			form.connection.select()
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
<form  name="testform" method="post">
<table border="1" align="center"> <tr>

	<tb><th>	SEQ </th> <th><input type="text" name="seq" size="15" value="${SEQ }" readonly="readonly"> </th><tr></tb>
	</tr><tb><th>	성명 </th> 	<th><input type="text"name="name" size="10" value="${NAME }"></th><tr></tb>
	</tr><tb><th>	전화번호 </th><th> <input type="text"name="tel" size="15" value="${TEL }"></th><tr></tb> 
	</tr><tb><th>	주소</th> <th><input type="text"name="address" size="40" value="${ADD }"></th><tr></tb>
	</tr><tb><th>	전자우편</th> <th><input type="text"name="email" size="40" value="${EMAIL }"></th><tr></tb>
	</tr><tb><th>	관계</th> <th><input type="text"name="connection" size="40" value="${CONNECTION }"></th><tr></tb>
	
	
	<tb><th>	<input type="submit" value="수정"  onclick="action='AddressBook5.jsp'"/></th></tb><tr>
	<tb><th>	<button type="submit" class="btn btn-primary"  onclick="action='AddressBook5.jsp'">수정버튼</button></th></tb><tr>
	</tr><tb><th>	<input type="submit" value="삭제"  onclick="action='AddressBook4.jsp'"/></th></tb>
	
	</tr>
	
</table>
	</form>



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>