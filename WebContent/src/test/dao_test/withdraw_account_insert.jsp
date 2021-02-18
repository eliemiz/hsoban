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
	
	// 변수 선언
	String account_id = request.getParameter("account_id");
	String reason = request.getParameter("reason");
	String withdraw_date_s = request.getParameter("withdraw_date_s");
	
	// validate
	if (account_id == null || account_id.trim().equals("")) {
		account_id = "0";
	}
	if (reason == null) {
		reason = "";
	}
	if (withdraw_date_s == null) {
		withdraw_date_s = "";
	}
	
	// insert
	if (account_id != "0"){
		Withdraw_account with = new Withdraw_account(Integer.parseInt(account_id), reason, withdraw_date_s);
		
		Dao_Withdraw_account dao = new Dao_Withdraw_account();
		dao.insertWithdraw_account(with);		
		
		response.sendRedirect("withdraw_account_list.jsp");
	}
	
	%>
<body>
	<form method="post" id="withdrawForm">
		<table>
			<tr>
				<th>account_id</th>
				<td><input type="text" name="account_id"></td>
			</tr>
			<tr>
				<th>reason</th>
				<td><input type="text" name="reason"></td>
			</tr>
			<tr>
				<th>withdraw_date_s</th>
				<td><input type="text" name="withdraw_date_s"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="입력" class="btn btn_thatch" id="insertButton"></td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
	var insertButton = document.querySelector('#insertButton');
	insertButton.onclick = function() {
		var withdrawForm = document.querySelector('#withdrawForm');
		var account_id = document.querySelector('[name=account_id]');
		var reason = document.querySelector('[name=reason]');
		var withdraw_date_s = document.querySelector('[name=withdraw_date_s]');
		
		// 유효성 체크
		if (isNaN(account_id.value)){
			alert('숫자를 입력하세요');
			return false;
		}
		
		withdrawForm.submit();
	}
</script>
</html>