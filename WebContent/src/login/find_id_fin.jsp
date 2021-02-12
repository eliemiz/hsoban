<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/css/login.css">
<style>
body {
   text-align: center;
   margin-top: 50px;
}
pre {
	font-size:12px;
}
table {
	border-collapse:collapse;
}
th{
	padding : 4px;
	height:100px;
	width:600px;
	background:#f7f7f7; 
	font-size:12px;
	text-align:center;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/><br>
<h2 align="center">아이디/비밀번호 찾기</h2>
<br><br><br>
<pre align="center">
회원가입 시 입력하신 이름 + 이메일 또는 휴대폰 번호로 아이디를 확인하실 수 있습니다.
정보 보호를 위해 아이디 일부는 숨김 처리하고, 임시 비밀번호는 가입하신 이메일로 발송됩니다.


</pre>
<form method="post" action="login.jsp">
<table border align='center' >
<tr><th>아이디:gildo**<br><br>전체 아이디는 고객센터로 문의해 주세요.<br> <!-- 아이디 밑줄처리 -->
</th></tr>
</table><br>
<div style="text-align:center;"><a href="login.jsp">
<span><input type="button" class="btn btn_color" value="로그인" style="height:40px; width:230px;"></span></a></div>
</div>
</form>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>