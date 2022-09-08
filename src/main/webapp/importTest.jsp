<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html Public "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.text.SimpleDateFormat" %> <!-- ln14에서 SimpleDataFormat을 사용하기 위해 java.text.SimpleDateFormat 클래스 import -->
<%@page import="java.util.*" %> <!-- ln14에서 Date 클래스를 사용하기 위해 java.util* import -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>import 속성 테스트</title>
</head>
<body>
<h1> 현재 시간은 <%=new SimpleDateFormat().format(new Date()) %> 입니다.</h1> <!-- Date 클래스 생성자로 Date 객체 생성 후 SimpleDateFormat 클래스의 format 메서드를 사용해 현재 시간 표시 -->
</body>