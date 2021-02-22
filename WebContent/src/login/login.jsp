<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
    import="hsoban.vo.*" import="hsoban.dao.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/login.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<style>
body {
   text-align: center;
   margin-top: 50px;
     }
form { 
margin: 0 auto; 
width:250px;
	 }     
</style>
</head>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	 if (id == null) id = "";
	 if (pass == null) pass = "";
	
	Dao_Account dao = new Dao_Account();
%>
<body>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/side.jsp"/>
<div class="content_wrap">
<br>
<p class="p_title" align="center">로그인</p>
<form method="post">
	<div style="padding-right:200px; font-family: 'Nanum Gothic'; font-size: 12px;">아이디<br></div>
		<input type="text" name="id" value="<%=id%>"size="28"><br><br>
	<div style="padding-right:190px; font-family: 'Nanum Gothic'; font-size: 12px;">비밀번호<br></div>
		<input type="password" name="pass" value="<%=pass%>" size="28"><br><br>
	<div style="padding-right:160px;"><input type="checkbox" name="safety" value="1" checked>보안접속</div>
		<div style="text-align:center;"><a href="../main/main.jsp">
	<span><input type="button" class="btn btn_black" value="로그인" style="height:40px; width:230px;"></span></a></div></form><!-- 메인이동 -->
	<br><hr width="230"><br>
	<div style="text-align:center;"><a href="find_id_pw.jsp">
	<span><input type="button" class="btn btn_gray" value="아이디/비밀번호찾기" style="height:40px; width:230px;"></span></a></div>
		<br>
	<div style="text-align:center;">
	<a href="signup.jsp">
	<span><input type="button" class="btn btn_black" value="회원가입" style="height:40px; width:230px;"></span>
</a></div>
</div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>