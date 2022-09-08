<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1><%=getStr() %></h1> <!-- getStr() 메서드 호출부 -->
<%! // str 변수 값을 생성하는 getStr() 메서드 정의 선언부
private String getStr(){ 
	str+="테스트입니다.";
	return str;
}
private String str="선언문 "; // 메서드 외부 선언부에서 선언되었기 때문에 jsp 페이지 전체에서 인식됨
%>