<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="sessionLogin" method="post"> // 로그인 처리를 위해 "sessionLogin" URL을 처리하는 서블릿으로 action 속성을 지정한다
	아이디 :<input type="text" name="id"/>
	비밀번호 :<input type="password" name="passwd"/><br>
	<input type="submit" value="로그인"/>
	
</form>
</body>
</html>