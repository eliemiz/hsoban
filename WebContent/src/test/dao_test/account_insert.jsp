<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
	import="hsoban.dao.*" import="hsoban.vo.*"%>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
</head>
<%
	
	String account_id = request.getParameter("account_id");
	if (account_id == null || account_id.trim().equals("")){
		account_id = "0";}
	String name = request.getParameter("name");
	if (name == null) {name = "";}
	String id = request.getParameter("id");
	if (id == null) {id = "";}
	String pass = request.getParameter("pass");
	if (pass == null) {pass = "";}
	String birthday_s = request.getParameter("birthday_s");
	if (birthday_s == null) {birthday_s = "";}
	String gender = request.getParameter("gender");
	if (gender == null) {gender = "";}
	String post = request.getParameter("post");
	if (post == null || post.trim().equals("")){
		post = "0";}
	String address = request.getParameter("address");
	if (address == null) {address = "";}
	String address2 = request.getParameter("address2");
	if (address2 == null) {address2 = "";}
	String email = request.getParameter("email");
	if (email == null) {email = "";}
	String phone = request.getParameter("phone");
	if (phone == null) {phone = "";}
	String phone2 = request.getParameter("phone2");
	if (phone2 == null) {phone2 = "";}
	String mail_recv = request.getParameter("mail_recv");
	if (mail_recv == null) {mail_recv = "";}
	String sms_recv = request.getParameter("ms_recv");
	if (sms_recv == null) {sms_recv = "";}
	String auth = request.getParameter("auth");
	if (auth  == null) {auth  = "";}
	if (account_id != "0"){
		Account account = new Account(Integer.parseInt(account_id), name, id, pass,
								birthday_s, gender, Integer.parseInt(post), address,
								address2, email, phone, phone2, Boolean.parseBoolean(mail_recv),
								Boolean.parseBoolean(sms_recv), auth);
		Dao_Account dao = new Dao_Account();
		dao.insertAccount(account);		
		response.sendRedirect("account_list.jsp");
	}
%>
<body>
	<form method="post" id="accountForm">
		<table>
			<tr>
				<th>account_id</th>
				<td><input type="text" name="account_id"></td>
			</tr>
			<tr>
				<th>name</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>id</th>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<th>pass</th>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<th>birthday</th>
				<td><input type="text" name="birthday_s" placeholder="YYYY-MM-DD"></td>
			</tr>
			<tr>
				<th>gender</th>
				<td><input type="text" name="gender"></td>
			</tr>
			<tr>
				<th>post</th>
				<td><input type="text" name="post"></td>
			</tr>
			<tr>
				<th>address</th>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<th>address2</th>
				<td><input type="text" name="address2"></td>
			</tr>
			<tr>
				<th>email</th>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<th>phone</th>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<th>phone2</th>
				<td><input type="text" name="phone2"></td>
			</tr>
			<tr>
				<th>mail_recv</th>
				<td><input type="text" name="mail_recv"></td>
			</tr>
			<tr>
				<th>sms_recv</th>
				<td><input type="text" name="sms_recv"></td>
			</tr>
			<tr>
				<th>auth</th>
				<td><input type="text" name="auth"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="등록" class="btn btn_thatch" id="insertButton"></td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
var insertButton = document.querySelector('#insertButton');
insertButton.onclick = function() {
	var wishForm = document.querySelector('#accountForm');
	var account_id = document.querySelector('[name=account_id]');
	var post = document.querySelector('[name=post]');
	if (isNaN(account_id.value) || isNaN(post.value)){
		alert('숫자를 입력하세요');
		return false;
	}
	accountForm.submit();
}
</script>
</html>