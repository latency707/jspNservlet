<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration"%> <!-- 클래스 import -->
<!DOCTYPE html>
<html>
<head>
<title>Config Test</title>
</head>
<body>
<h2>config 테스트</h2>
<table border="1">
	<tr>
		<td>초기 파라미터 이름</td>
		<td>초기 파라미터 값</td>
	</tr>
<%
Enumeration e=config.getInitParameterNames(); // 초기화 파라미터 이름들을 Enumeration 자료형으로 추출
while(e.hasMoreElements()) {
	String init_paramName=(String)e.nextElement();
	%>
	<tr>
		<td><%=init_paramName %></td> <!-- 초기화 파라미터 이름 출력 -->
		<td><%=config.getInitParameter(init_paramName) %></td> <!-- 초기화 파라미터 값 출력 -->
	</tr>
	<%
}
%>
</table>
</body>

</html>