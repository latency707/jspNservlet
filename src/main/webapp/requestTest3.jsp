<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Request test3</title>
<style>
h1{
	text-align: center
}

table{
	margin: auto;
	width: 400px;
	border:1px solid red;
}
</style>
</head>
<body>
<h1>쿠키, URL.URI, 요청 방식에 관련된 정보 예제</h1>
<table border="1">
	<tr>
		<td>쿠키 정보</td>
<% // getCookies() 메서드로 쿠키 정보 추출
Cookie[] cookie=request.getCookies(); 
if(cookie==null){ // 쿠키 정보가 null 일 경우 처리
%>
	<td>쿠키가 존재하지 않습니다</td>
<%
} else { // 쿠키가 존재할 경우 getName(), getValue() 메서드로 쿠키이름과 값 출력
	for(int i=0; i<cookie.length;i++){ %>
		<td><%=cookie[i].getName() %>(<%=cookie[i].getValue() %> &nbsp;&nbsp;</td>
		<%
	}
}
%>
	</tr>
	<tr>
		<td>서버 도메인명</td>
		<td><%=request.getServerName() %>
	</td>
	<tr>
		<td>서버 포트번호</td>
		<td><%=request.getServerPort() %>
	</td>
	<tr>
		<td>요청 URL</td>
		<td><%=request.getRequestURL() %>
	</td>
	<tr>
		<td>요청 URI</td>
		<td><%=request.getRequestURI() %>
	</td>
	<tr>
		<td>요청 쿼리</td>
		<td><%=request.getQueryString() %>
	</td>
	<tr>
		<td>클라이언트 호스트명</td>
		<td><%=request.getRemoteHost() %>
	</td>
	<tr>
		<td>클라이언트 IP 주소</td>
		<td><%=request.getRemoteAddr() %>
	</td>
	<tr>
		<td>프로토콜</td>
		<td><%=request.getProtocol() %>
	</td>
	<tr>
		<td>요청방식</td>
		<td><%=request.getMethod() %>
	</td>
	<tr>
		<td>컨텍스트 경로</td>
		<td><%=request.getContextPath() %>
	</td>
</table>
</body>
</html>