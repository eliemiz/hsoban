<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/resources/css/a00_com.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
	<%
	// F11로 실행(디버깅모드)하면 웹페이지에 에러가 발생한다.
	
	// 여기에 중단점을 걸고 F6(Step over)로 한단계씩 실행시켜 변수에 들어있는 값 확인
	String tempStr = null;
	
	int a = 10;
	int b = 20;
	int c = 30;
	
	// 여기서 null 참조 에러 발생
	char tempChar = tempStr.charAt(5);
	%>
<body>

</body>
</html>