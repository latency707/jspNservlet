<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Appliucation Test</title>
</head>
<body>
<h2>application 테스트</h2>
<table border="1">
	<tr>
		<td>JSP버전</td>
		<!-- ServletApi 버전 정보 추출 -->
		<td><%=application.getMajorVersion() %>.<%=application.getMinorVersion() %></td>
	</tr>
	<tr>
		<td>컨테이너 정보</td>
		<!-- 컨테이너 정보 추출 -->
		<td><%=application.getServerInfo() %></td>
	</tr>
	<tr>
		<td>웹애플리케이션의 실제 파일 시스템 경로</td>
		<!-- 애플리케이션 경로("/")의 실제 시스템상 경로 추출 -->
		<td><%=application.getRealPath("/") %></td>
	</tr>
</table>
</body>
</html>