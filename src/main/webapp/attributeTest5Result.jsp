<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
pageValue = <%=pageContext.getAttribute("pageScope") %><br> <!-- page 영역에 공유된 속성값 출력 -->
requestValue = <%=request.getAttribute("requestScope") %> <!-- request 영역에 공유된 속성값 출력 -->
</body>
</html>