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
<style type="text/css">

body {
	width: 90%;
	margin: auto;
	padding-top: 50px;
}

</style>
</head>
	<%
	
	// 변수 선언
	String account_id = request.getParameter("account_id");
	String product_id = request.getParameter("product_id");
	String color = request.getParameter("color");
	String count = request.getParameter("count");
	
	// validate
	if (account_id == null || account_id.trim().equals("")) {
		account_id = "0";
	}
	if (product_id == null || product_id.trim().equals("")) {
		product_id = "0";
	}
	if (color == null) {
		color = "";
	}
	if (count == null || count.trim().equals("")) {
		count = "0";
	}
	
	// insert
	if (account_id != "0"){
		Cart cart = new Cart(Integer.parseInt(account_id), Integer.parseInt(product_id), color, Integer.parseInt(count));
		
		Dao_Cart dao = new Dao_Cart();
		dao.insertCart(cart);		
		
		response.sendRedirect("cart_list.jsp");
	}
	
	%>
<body>
	<form method="post" id="cartForm">
		<table>
			<tr>
				<th>account_id</th>
				<td><input type="text" name="account_id"></td>
			</tr>
			<tr>
				<th>product_id</th>
				<td><input type="text" name="product_id"></td>
			</tr>
			<tr>
				<th>color</th>
				<td><input type="text" name="color"></td>
			</tr>
			<tr>
				<th>count</th>
				<td><input type="text" name="count"></td>
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
		var cartForm = document.querySelector('#cartForm');
		var account_id = document.querySelector('[name=account_id]');
		var product_id = document.querySelector('[name=product_id]');
		var count = document.querySelector('[name=count]');
		
		// 유효성 체크
		if (isNaN(account_id.value) || isNaN(product_id.value) || isNaN(count.value)){
			alert('숫자를 입력하세요');
			return false;
		}
		
		cartForm.submit();
	}
</script>
</html>