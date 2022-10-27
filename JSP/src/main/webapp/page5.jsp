<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="request5.jsp" method="get">
 

계산을 위한 숫자를 입력 하세요 <br>
    
         <td> 숫자 1 :
          <select name="num">
          <%
          for(int i=0; i<100; i++){
          
          out.println("<option value="+i+">" + i + "</option>");

          }
         
          %>
          </select><br></td> 
          
         <td> 숫자 2 :
          <select name="num2">
             <%
             for(int j=0; j<=10; j++){
                 
                 out.println("<option value="+j+">" + j + "</option>");

                 }
             
             %>
          </select><br></td> 
          <tr>      
        
         <td> 취미 : <br>
          <input type="checkbox" name="operator" value="덧셈" checked="checked"> 덧셈 <br>
          <input type="checkbox" name="operator" value="뺄셈" >뺄셈 <br>
          <input type="checkbox" name="operator" value="곱셈" >곱셈 <br>
          <input type="checkbox" name="operator" value="나눗셈" >나눗셈 <br>
         </td> 
          
   
	</tr>
	
	 <input type="submit"  value="계산">
	</tr>
 </form>
</body>
</html>