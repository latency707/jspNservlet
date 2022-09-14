<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
pageContext.setAttribute("pageScope", "pageValue"); // page 영역에 속성값 공유
request.setAttribute("requestScope", "requestValue"); // request 영역에 속성값 공유
%>
<jsp:forward page="attributeTest5Result.jsp"></jsp:forward>jsp:forward> <!-- forward 액션태그로 제어권을 requestTest5Result.jsp로 이동(페이지 이동) -->
</body>
</html>