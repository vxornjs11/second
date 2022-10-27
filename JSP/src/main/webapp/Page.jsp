<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action="requestParametar.jsp" method="get">
	<tr>
         	<td> 이름 :</td>
         	<td><input type="text" name="userName" size="10"  ><br></td>
	</tr>
	<tr>
     		<td> 
     		아이디 : 
     		<input type="text" name="userId" size="10"><br>
     		</td>
     		</tr>
	<tr>
     		<td> 
     		패스워드 : 
     		<input type="password" name="PW" size="10"><br>
     		</td>
	</tr>   
        
	<tr>      
        
         <td> 취미 : 
          <input type="checkbox" name="hobby" value="독서" checked="checked"> 독서
          <input type="checkbox" name="hobby" value="요리" >요리
          <input type="checkbox" name="hobby" value="조깅" >조깅
          <input type="checkbox" name="hobby" value="수영" >수영 <br>
         </td> 
         
         <td> 전공 : 
          <input type="radio" name="major" value="국어" checked="checked"> 국어,
          <input type="radio" name="major" value="영어"> 영어
          <input type="radio" name="major" value="디자인"> 디자인<br>
         </td> 
        
	</tr>
         <td>Protocol :
          <select name="protocol">
                 <option value="http">http</option>
                 <option value="ftp">ftp</option>
                 <option value="smtp" selected="selected">selected</option>
                 <option value="pop">pop</option>
          </select><br></td> 
          
          
          <input type="submit"  value="확인">
          <input type="reset"  value="취소">
	</td>
	</tr>
 </form>

</body>
</html>