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
</head>
<style>
pre {
	font-size:2px;
}
form {
	visibility: hidden;
	width: 0px;
	display: inline-block;
}
table {
	border-collapse:collapse;
}
th { 
	padding : 4px;
	height:30px;
	width:100px;
	background:#f7f7f7; 
	font-size:2px;
	text-align:left;
}
td {
	padding : 4px;
	height : 30px;
	width : 550px;
	font-size:1px; 
	text-align:left; 
}
</style>
<body>
<h2 align="center">아이디/비밀번호 찾기</h2>
<br><br>
<h6 align="center">아이디 찾기</h6><hr width="900"><br>
<pre align="center">회원가입 시, 입력하신 이름 + 이메일 또는 휴대폰 번호로 아이디를 확인하실 수 있습니다.

</pre>
	<div align="center">
		<input type="radio" name="tempName" id="mail1" onchange="changeForm('mail1')"><label for="mail1">이메일로 찾기</label>
		<input type="radio" name="tempName" id="phone1" onchange="changeForm('phone1')"><label for="phone1">휴대폰 번호로 찾기</label>
	</div><br>
	<form id="form1">
		<table border align="center">
			<tr><th>이&nbsp;름</th><td><input type="text" name="username"></td></tr>
			<tr><th>이메일</th><td><input type="text" name="mail" ></td></tr></table>
			<div style="text-align:center;"><a href="find_id_fin.jsp"><span>
			<input type="button" class="btn btn_color" value="아이디찾기" style="height:30px; width:160px;"></span></a></div>
			<div style="text-align:center;"><a href="login.jsp"><span>
			<input type="button" class="btn btn_black" value="로그인" style="height:30px; width:160px;"></span></a></div>	
	</form>
	<form id="form2" align="center">
		<table border align="center">
			<tr><th>이&nbsp;름</th><td><input type="text" name="username"></td></tr>
			<tr><th>휴대폰 번호</th><td><input type="text" name="phone" ></td></tr></table>
			<div style="text-align:center;"><a href="find_id_fin.jsp"><span>
			<input type="button" class="btn btn_color" value="아이디찾기" style="height:30px; width:160px;"></span></a></div>
			<div style="text-align:center;"><a href="login.jsp"><span>
			<input type="button" class="btn btn_black" value="로그인" style="height:30px; width:160px;"></span></a></div>
	</form>

<h6 align="center">비밀번호 찾기</h6><hr width="900"><br>
<pre align="center">가입하신 아이디 + 이메일 또는 휴대폰 번호를 입력, 본인인증을 통해 이메일 또는 휴대폰 번호로
임시 비밀번호를 보내드립니다. 확인 후 로그인하셔서 반드시 비밀번호를 변경하시기 바랍니다.</pre><br>
	<div align="center">
		<input type="radio" name="tempName" id="mail2" onchange="changeForm('mail2')"><label for="mail2">이메일로 찾기</label>
		<input type="radio" name="tempName" id="phone2" onchange="changeForm('phone2')"><label for="phone2">휴대폰 번호로 찾기</label>
	</div><br>
	<form id="form3">
		<table border align="center">
			<tr><th>이&nbsp;름</th><td><input type="text" name="username"></td></tr>
			<tr><th>이메일</th><td><input type="text" name="mail" ></td></tr></table>
			<div style="text-align:center;"><a href="find_pw_fin.jsp"><span>
			<input type="button" class="btn btn_color" value="임시 비밀번호 발급" style="height:30px; width:160px;"></span></a></div>
			<div style="text-align:center;"><a href="login.jsp"><span>
			<input type="button" class="btn btn_black" value="로그인" style="height:30px; width:160px;"></span></a></div>	
	</form>
	<form id="form4" align="center">
		<table border align="center">
			<tr><th>이&nbsp;름</th><td><input type="text" name="username"></td></tr>
			<tr><th>휴대폰 번호</th><td><input type="text" name="phone" ></td></tr></table>
			<div style="text-align:center;"><a href="find_pw_fin.jsp"><span>
			<input type="button" class="btn btn_color" value="임시 비밀번호 발급" style="height:30px; width:160px;"></span></a></div>
			<div style="text-align:center;"><a href="login.jsp"><span>
			<input type="button" class="btn btn_black" value="로그인" style="height:30px; width:160px;"></span></a></div>
	</form>

</body>
<script type="text/javascript">

	function changeForm(element) {
		if (element == 'mail1') {
			document.querySelector('#form1').style.visibility = 'visible';
			document.querySelector('#form1').style.width = 'auto';
			
			document.querySelector('#form2').style.visibility = 'hidden';
			document.querySelector('#form2').style.width = '0px';
			
		} else if (element == 'phone1') {
			document.querySelector('#form1').style.visibility = 'hidden';
			document.querySelector('#form1').style.width = '0px';
			
			document.querySelector('#form2').style.visibility = 'visible';
			document.querySelector('#form2').style.width = 'auto';
		} else if (element == 'mail2') {
			document.querySelector('#form3').style.visibility = 'hidden';
			document.querySelector('#form3').style.width = '0px';
			
			document.querySelector('#form4').style.visibility = 'visible';
			document.querySelector('#form4').style.width = 'auto';
		} else if (element == 'phone2') {
			document.querySelector('#form3').style.visibility = 'hidden';
			document.querySelector('#form3').style.width = '0px';
			
			document.querySelector('#form4').style.visibility = 'visible';
			document.querySelector('#form4').style.width = 'auto';
		}
	}
</script>
</html>