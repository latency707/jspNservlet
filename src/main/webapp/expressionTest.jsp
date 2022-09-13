<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%! // 1부터 100까지의 합을 구하는 sum() 메서드를 선언문 영역에 정의
public int sum(){
	int total=0;
	for(int i=1; i<=100; i++) {
		total += i;
	}
	return total;
} 
%>
<%
String str="1부터 100까지의 합"; // 스크립틀릿 영역에서 str 변수에 문자열 값 할당
%>
<html>
<head>
<title> Expression Test</title>
</head>
<body>
<h2><%=str %>은<b><%=sum() %></b>입니다.</h2> <!-- 표현식을 통한 str 변수 값, sum() 메서드 결과값 출력 -->
<br>
<h2><%=str %>에 3을 곱하면 <b><%=sum()*3 %></b>이 됩니다.</h2> <!-- sum() 메서드를 포함한 수식의 결과를 표현식으로 출력1 -->
<br>
<h2><%=str %>을 1000으로 나누면 <b><%=sum()/1000 %></b>이 됩니다.</h2> <!-- sum() 메서드를 포함한 수식의 결과를 표현식으로 출력2 -->

</body>
</html>
