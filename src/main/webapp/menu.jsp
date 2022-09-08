<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<%
	String id = (String)session.getAttribute("id"); // session 객체를 사용하려면 HttpSession session = request.getSession()과 같이 객체를 수동으로 생성해야하는 서블릿과는 달리, JSP에서는 세션 객체를 자동으로 생성해주기 때문에 바로 사용이 가능
%>
<body>
<%
	if(id == null){ // 로그인 성공 후 세션 영역에 id값이 저장되어 있지 않으면(=로그인이 안된 상태) null 값 반환 후 ln8의 로그인 메뉴가 출력됨 
%>
<a href="login.jsp">로그인</a>
<%
	}
	else{ // id 값이 반환되면 ln13에서 id님 환영합니다. 라는 로그인 성공메세지가 출력됨
%>
	<%=id %>님 환영합니다. 
<%
	}
%>
</body>
</html>
