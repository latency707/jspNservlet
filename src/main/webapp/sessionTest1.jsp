<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.setMaxInactiveInterval(10); // 사용자의 작업이 없을 때 세션유지시간 설정(초)
%>
<html>
<head>
<title>Session Test</title>
</head>
<body>
<h2>세션 테스트</h2>
isNew():<%=session.isNew() %><br>
생성시간:<%=session.getCreationTime() %><br> <!-- 현재 세션이 새로 생성된 세션인지 판단 -->
최종 접속 시간:<%=session.getLastAccessedTime() %><br> <!-- 세션 생성 시간(밀리초) -->
세션 ID: <%=session.getId() %><br> <!-- 세선 ID 반환 -->
</body>
</html>