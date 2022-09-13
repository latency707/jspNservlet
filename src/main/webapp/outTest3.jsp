<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Out Test</title>
</head>
<body>
<h2>Out 테스팅</h2>
<table border="1">
	<tr>
		<td>autoFlush 여부</td>
		<td><%=out.isAutoFlush() %></td> <!-- autoFlush 여부 출력 -->
	</tr>
	<tr>
		<td>출력 버퍼의 크기</td>
		<td><%=out.getBufferSize() %>바이트</td> <!-- 출력 버퍼 크기 출력 -->
	</tr>
	<tr>
		<td>출력 버퍼의 남은 양</td>
		<td><%=out.getRemaining() %>바이트</td> <!-- 출력 버퍼 잔여 바이트 출력 -->
	</tr>
</table>
</body>
</html>