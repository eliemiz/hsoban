<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
	import="hsoban.dao.*" import="hsoban.vo.*"%>
<%
	request.setCharacterEncoding("UTF-8");
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
	
	Dao_Account dao = new Dao_Account();
	Account account = new Account(Integer.parseInt(account_id), name, id, pass,
			birthday_s, gender, Integer.parseInt(post), address,
			address2, email, phone, phone2, Boolean.parseBoolean(mail_recv),
			Boolean.parseBoolean(sms_recv), auth);
	String proc = request.getParameter("proc");
	if (proc == null) {
		proc = "";
	}
	if (proc.equals("delete")) {
		dao.deleteAccount(Integer.parseInt(account_id));
		response.sendRedirect("account_list.jsp");
	}
%>
<body>
  <form method="post" id="accountForm">
		<input type="hidden" name="proc" value="">
		<table>
			<tr>
				<th>account_id</th>
				<td><input type="text" name="account_id" value="<%=account.getAccount_id()%>" disabled></td>
			</tr>
			<tr>
				<th>name</th>
				<td><input type="text" name="name" value="<%=account.getName()%>" disabled></td>
			</tr>
			<tr>
				<th>id</th>
				<td><input type="text" name="id" value="<%=account.getId()%>" disabled></td>
			</tr>
			<tr>
				<th>pass</th>
				<td><input type="text" name="pass" value="<%=account.getPass()%>" disabled></td>
			</tr>
			<tr>
				<th>birthday</th>
				<td><input type="text" name="birthday" value="<%=account.getBirthday()%>" disabled></td>
			</tr>
			<tr>
				<th>gender</th>
				<td><input type="text" name="gender" value="<%=account.getGender()%>" disabled></td>
			</tr>
			<tr>
				<th>post</th>
				<td><input type="text" name=post" value="<%=account.getPost()%>" disabled></td>
			</tr>
			<tr>
				<th>address</th>
				<td><input type="text" name="address" value="<%=account.getAddress()%>" disabled></td>
			</tr>
			<tr>
				<th>address2</th>
				<td><input type="text" name="address2" value="<%=account.getAddress2()%>" disabled></td>
			</tr>
			<tr>
				<th>email</th>
				<td><input type="text" name="email" value="<%=account.getEmail()%>" disabled></td>
			</tr>
			<tr>
				<th>phone</th>
				<td><input type="text" name="phone" value="<%=account.getPhone()%>" disabled></td>
			</tr>
			<tr>
				<th>phone2</th>
				<td><input type="text" name="phone2" value="<%=account.getPhone2()%>" disabled></td>
			</tr>
			<tr>
				<th>mail_recv</th>
				<td><input type="text" name="mail_recv" value="<%=account.isMail_recv()%>" disabled></td>
			</tr>
			<tr>
				<th>sms_recv</th>
				<td><input type="text" name="sms_recv" value="<%=account.isSms_recv()%>" disabled></td>
			</tr>
			<tr>
				<th>auth</th>
				<td><input type="text" name="auth" value="<%=account.getAuth()%>" disabled></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정" id="updateButton" disabled>
					<input type="submit" value="삭제" id="deleteButton">
					<input type="button" value="리스트 이동" onclick="location.href='account_list.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
var accountForm = document.querySelector('#accountForm');
var proc = document.querySelector('[name=proc]');
var deleteButton = document.querySelector('#deleteButton');
	deleteButton.onclick = function() {
		proc.value = 'delete';
		if(confirm('정말 삭제하시겠습니까?')){
		    accountForm.submit();	
		} 
	}
</script>
</html>