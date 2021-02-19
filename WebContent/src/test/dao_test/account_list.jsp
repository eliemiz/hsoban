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
<style>
</style>
</head>
<%
	String account_id = request.getParameter("account_id");
	if (account_id == null || account_id.trim().equals("")){
		account_id = "";
	}
	String pass = request.getParameter("pass");
	if (pass == null) pass = "";
	
	log("#### account_id =" + account_id);
	log("#### pass =" + pass);
	
	Dao_Account dao = new Dao_Account();
	ArrayList<Account> list;
	if(account_id == "" && pass == ""){
		list = dao.getAccountList();
	}else{
		list = dao.getAccountList(Integer.parseInt(account_id), pass);
	}
%>
<body>
   <form method="post" id="accountForm">
		<table>
			<tr>
				<th>계정번호(account_id)</th>
				<td><input type="text" name="account_id" value="<%=account_id%>"></td>
			</tr>
			<tr>
				<th>패스워드(pass)</th>
				<td><input type="text" name="pass" value="<%=pass%>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="검색" id="searchButton" class="btn btn_thatch">
					<input type="button" value="회원가입하기" id="insertButton" class="btn btn_black" 
						onclick="location.href='account_insert.jsp'">
				</td>
			</tr>
		</table>
	</form>
	<table id="accountList">
		<tr>
			<th>account_id</th>
			<th>name</th>
			<th>id</th>
			<th>pass</th>
			<th>birthday</th>
			<th>gender</th>
			<th>post</th>
			<th>address</th>
			<th>address2</th>
			<th>email</th>
			<th>phone</th>
			<th>phone2</th>
			<th>mail_recv</th>
			<th>sms_recv</th>
			<th>auth</th>
		</tr>
		<%
		for(Account account : list){
		%>
		<tr onclick="callDetail(<%=account.getAccount_id()%>,'<%=account.getName()%>','<%=account.getId()%>',
								'<%=account.getPass()%>','<%=account.getBirthday()%>','<%=account.getGender()%>',
								<%=account.getPost()%>,'<%=account.getAddress()%>','<%=account.getAddress2()%>',
								'<%=account.getEmail()%>,'<%=account.getPhone()%>','<%=account.getPhone2()%>',
								'<%=account.isMail_recv()%>','<%=account.isSms_recv()%>','<%=account.getAuth()%>')">
			<td><%=account.getAccount_id()%></td>
			<td><%=account.getName()%></td>
			<td><%=account.getId()%></td>
			<td><%=account.getPass()%></td>
			<td><%=account.getBirthday()%></td>
			<td><%=account.getGender()%></td>
			<td><%=account.getPost()%></td>
			<td><%=account.getAddress()%></td>
			<td><%=account.getAddress2()%></td>
			<td><%=account.getEmail()%></td>
			<td><%=account.getPhone()%></td>
			<td><%=account.getPhone2()%></td>
			<td><%=account.isMail_recv()%></td>
			<td><%=account.isSms_recv()%></td>
			<td><%=account.getAuth()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
<script type="text/javascript">
	var searchButton = document.querySelector('#searchButton');
	searchButton.onclick = function() {
		var account_id = document.querySelector('[name=account_id]');
		if (isNaN(account_id.value)){
			alert('account_id에 숫자를 입력해주세요');
			return false;
		}
		document.querySelector('#accountForm').submit();
	}
	function callDetail(){
		var url = "account_detail.jsp?";
		url += "account_id=" + arguments[0];
		url += "&name=" + arguments[1];
		url += "&id=" + arguments[2];
		url += "&pass=" + arguments[3];
		url += "&birthday=" + arguments[4];
		url += "&gender=" + arguments[5];
		url += "&post=" + arguments[6];
		url += "&address=" + arguments[7];
		url += "&address2=" + arguments[8];
		url += "&email=" + arguments[9];
		url += "&phone=" + arguments[10];
		url += "&phone2=" + arguments[11];
		url += "&mail_recv=" + arguments[12];
		url += "&sms_recv=" + arguments[13];
		url += "&auth=" + arguments[14];
		location.href = url;
	}
</script>
</html>