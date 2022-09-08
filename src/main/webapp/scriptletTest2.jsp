<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<%
Calendar c=Calendar.getInstance();
	int hour=c.get(Calendar.HOUR_OF_DAY);
	int minute=c.get(Calendar.MINUTE);
	int second=c.get(Calendar.SECOND);
%>
<html>
<head>
<title>Scriptlet Test2</title>
</head>
<body>
<h1>현재시간 <%=hour %>시 <%=minute %>분 <%=second %>초</h1>
<% if(hour>=12){ %> <!-- if 제어문에서 대괄호;"{" 를 닫지 않은 상태에서 스크립틀릿 태그를 닫고 HTML 태그를 표시한 후 다시 스크립틀릿 태그를 열어 제어문을 완성할 수 있다. 이 방식은 제어문을 통해 어떤 HTML 태그를 사용할지를 제어하는 데에 매구 유용하게 사용될 수 있다. -->
	<h2>오후 입니다.</h2>
	<%} else { %>
		<h2>오전 입니다.</h2>
	<%} %>

</body>

</html>