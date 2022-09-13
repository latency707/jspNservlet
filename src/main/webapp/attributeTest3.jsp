<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<title>Attribute Test</title>
</head>
<body>
<h2>영역과 속성 테스트</h2>
<table border="1">
	<tr><td colspan="2">Application 영역에 저장된 내용들</td></tr>
	<tr>
		<td>이름</td>
		<td><%=application.getAttribute("name") %></td> <!-- application 영역의 "name" 속성 추출출 후 출력 -->
	</tr>
	<tr>
		<td>아이디</td>
		<td><%=application.getAttribute("id") %></td> <!-- application 영역의 "id" 속성 추출 후 출력 -->
	</tr>
</table>
<br>
<table border="1">
	<tr><td colspan="2">Session 영역에 저장된 내용들</td></tr>
<%
// session 영역의 모든 속성명을 Enumeration 타입으로 읽어 각 속성명을 attributeName 변수로 받아 getAttribute 메서드로 attributeValue 변수에 저장 후 표현식을 통해 속성명과 값을 출력하는 부분
Enumeration e=session.getAttributeNames();
while(e.hasMoreElements()){
	String attributeName=(String)e.nextElement();
	String attributeValue=(String)session.getAttribute(attributeName);
	%>
	<tr>
		<td><%=attributeName %></td>
		<td><%=attributeValue %></td>
	</tr>
<%
}
%>
</table>
</body>
</html>