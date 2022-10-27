<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	public String optionNum(int num){
	String str = "";
	for(int i=0; i<=num; i++){
		str += "<option value = " + i + ">" + i + "</option>";
	}
return str;
}

%>
	숫자 2개를 입력해 주세요
 <br>
<br>
<form action="request4.jsp" method="get">
    
         <td> 숫자 1 :
          <select name="num">
          <%

          out.println(optionNum(100));

          %>
          </select><br></td> 
          
         <td> 숫자 2 :
          <select name="num2">
             <%

          out.println(optionNum(10));

          %>
          </select><br></td> 
          
          
   
	</tr>
	</tr>
	<td> 계산방법 :  <br>
          <input type="radio" name="math" value="덧셈" checked="checked"> 덧셈 <br>
          <input type="radio" name="math" value="뺄셈"> 뺄셈 <br>
          <input type="radio" name="math" value="곱셈"> 곱셈 <br>
          <input type="radio" name="math" value="나눗셈"> 나눗셈
          
          <br>
         </td> 
	<tr>
	 <input type="submit"  value="계">
	</tr>
 </form>
</body>
</html>