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

</style>
</head>
<body>
<h2 align="center">로그인</h2>
<br><br>
<form align="center" method="post">
아이디<br>
<input type="text" name="id" size="30"><br>
비밀번호<br>
<input type="password" name="pass" size="30"><br>
<input type="checkbox" name="safety" value="1" checked>보안접속<br>
<div style="text-align:center;">
<span><input type="button" class="btn btn_black" value="로그인" style="height:40px; width:230px;"></span></div></form><!-- 메인이동 -->
<br><hr width="230"><br>
<div style="text-align:center;"><a href="find_id_pw.jsp">
<span><input type="button" class="btn btn_gray" value="아이디/비밀번호찾기" style="height:40px; width:230px;"></span></a></div>
<br>
<div style="text-align:center;">
<a href="signup.jsp">
<span><input type="button" class="btn btn_black" value="회원가입" style="height:40px; width:230px;"></span>
</a></div>
</body>
</html>