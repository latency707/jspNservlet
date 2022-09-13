<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
<title>Request Test</title>
<style>
h1{
	text-align: center;
}

table {
	margin: auto;
	width: 400px;
	borderL 1px solid red;
}
</style>
</head>
<body>
<h1>Request 예제입니다</h1>
<table>
	<tr>
		<td>이름</td>
		<td><%=request.getParameter("name") %></td> <!-- name 파라미터값을 받아 표현식으로 출력 -->
	</tr>
	<tr>
		<td>성별</td>
		<td>
			<%if(request.getParameter("gender").equals("male")) {%>남자
			<%} else {%>여자<%} %>
		</td>
	</tr>
	<tr>
		<td>취미</td>
		<td>
			<%
			String[] hobby=request.getParameterValues("hobby"); // 여러 값을 가질 수 있는 hobby 파라미터를 getParameterValues 메서드를 사용해 String 배열로 값을 가져옴
			for(int i=0;i<hobby.length;i++){ // 가져온 값들 모두 출력
			%>
			<%=hobby[i] %>&nbsp;&nbsp;
			<%} %>
		</td>
	</tr>
</table>
</body>
</html>
		