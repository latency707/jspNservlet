<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Attribute Test</title>
</head>
<body>
<h2>영역과 속성 테스트</h2>
<%
request.setCharacterEncoding("UTF-8");
String name=request.getParameter("name"); // 클라이언트에서 파라미터로 전송된 이름 추출
String id=request.getParameter("id");  // 클라이언트에서 파라미터로 전송된 ID 추출
if(name!=null&id!=null){ // 추출한 이름, ID 값을 application 영역 속성으로 공유
	application.setAttribute("name",name);
	application.setAttribute("id",id);
}
%>
<h3><%=name %>님 반갑습니다.<br><%=name %>님의 ID는 <%=id %>입니다.</h3> <!-- 클라이언트에서 파라미터값 출력 -->
<!-- 세션 영역에 저장할 값을 입력받는 form 영역 정의 부분 -->
<form action="attributeTest2.jsp" method="post">
<table border="1">
	<tr><td colspan="2">Session 영역에 저장할 내용들</td></tr>
	<tr>
		<td>e-mail 주소</td>
		<td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td>집 주소</td>
		<td><input type="text" name="address"></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="tel"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="전송"></td>
	</tr>
</table>
</form>
</body>
</html>