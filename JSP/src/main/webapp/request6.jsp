<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! String imgLink; %>

<%

request.setCharacterEncoding("utf-8");

double cm = Integer.parseInt(request.getParameter("cm"));
double kg = Integer.parseInt(request.getParameter("kg"));

double bmi = kg/(cm*cm)* 10000;

%>
당신의 키는 <%=cm %> 이고 <br>
당신의 몸무게는  <%=kg %> 이므로 <br>
당신의 bmi는 <%=String.format("%.3f",bmi) %> 입니다 <br>
<%
if(bmi>25.0){
	out.println("당신의 " + String.format("%.3f",bmi) + "지수는 비만 입니다.");
	imgLink="https://www.consumernews.co.kr/news/photo/old/2007/04/11/15/pp_28302_1.jpg";
}else if(bmi>=23.0 && bmi <25){
	out.println("당신의 " + String.format("%.3f",bmi) + "지수는 과체중 입니다.");
	imgLink="https://image.ajunews.com/content/image/2022/07/18/20220718110618230950.jpg";
}else if(bmi>=18.5 && bmi<23){
	out.println("당신의 " + String.format("%.3f",bmi) + "지수는 정상 입니다.");
	imgLink="data:image/jpeg;base64,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";
}else if(bmi<18.5 && bmi >=0){
	out.println("당신의 " + String.format("%.3f",bmi)+ "지수는 저체중 입니다.");
	imgLink="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzHinNW1YprEvKG0Wd-LRGH8gc4VIcQAvApw&usqp=CAU";
}
%>
<br>
<img src=<%=imgLink %> width="400">


</body>
</html>