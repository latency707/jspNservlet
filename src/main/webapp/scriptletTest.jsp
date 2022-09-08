<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<% // 스크립틀릿 부분에서 현재 시간, 분, 초 값을 지역변수에 할당하는 부분(스크립틀릿 내부 선언 변수는 지역변수로 인식됨)
Calendar c=Calendar.getInstance();
	int hour=c.get(Calendar.HOUR_OF_DAY);
	int minute=c.get(Calendar.MINUTE);
	int second=c.get(Calendar.SECOND);
%>
<html>
<head>
<title>Scriptlet Test</title>
</head>
<body>
<h1>현재 시간은 <%=hour %>시 <%=minute %>분 <%=second %>초 입니다.</h1> <!-- 스크립틀릿 부분에서 구한 현재 시간에 관한 값들을 출력하는 코드 -->
</body>
</html>