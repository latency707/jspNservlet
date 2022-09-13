<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>pageContext Test</title>
</head>
<body>
<%
pageContext.include("pageContextTest3.jsp"); // pageContextTest3.jsp 인클루드
%>
<h2>pageContext의 forward 메서드로 포위된 페이지입니다.</h2>
</body>
</html>