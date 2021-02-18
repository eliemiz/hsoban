<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
	import="hsoban.dao.*" import="hsoban.vo.*" %>
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
	String product_id = request.getParameter("product_id");
	String color = request.getParameter("color");
	String order_count = request.getParameter("order_count");
	String order_date_s = request.getParameter("order_date_s");
	String post = request.getParameter("post");
	String address = request.getParameter("address");
	String address2 = request.getParameter("address2");
	String order_message = request.getParameter("order_message");
	String pay = request.getParameter("pay");
	String total = request.getParameter("total");
	
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
	if (order_count == null || order_count.trim().equals("")) {
		order_count = "0";
	}
	if (order_date_s == null) {
		order_date_s = "";
	}
	if (post == null || post.trim().equals("")) {
		post = "0";
	}
	if (address == null) {
		address = "";
	}
	if (address2 == null) {
		address2 = "";
	}
	if (order_message == null) {
		order_message = "";
	}
	if (pay == null) {
		pay = "";
	}
	if (total == null || total.trim().equals("")) {
		total = "0";
	}
	// insert
	if (account_id != "0"){
		Order order = new Order(Integer.parseInt(account_id), Integer.parseInt(product_id), color, Integer.parseInt(order_count),
				order_date_s, Integer.parseInt(post), address, address2, order_message, pay, Integer.parseInt(total));
		
		Dao_Order dao = new Dao_Order();
		dao.insertOrder(order);		
		
		response.sendRedirect("order_list.jsp");
	}
	
	%>
<body>
<form method="post" id="orderForm">
		<table>
		
			<!-- <tr>
				<th>order_id</th>
				<td><input type="text" name="order_id"></td>
			</tr> -->
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
				<th>order_count</th>
				<td><input type="text" name="order_count"></td>
			</tr>
			<tr>
				<th>order_date_s</th>
				<td><input type="text" name="order_date_s"></td>
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
				<th>order_message</th>
				<td><input type="text" name="order_message"></td>
			</tr>
			<tr>
				<th>pay</th>
				<td><input type="text" name="pay"></td>
			</tr>
			<tr>
				<th>total</th>
				<td><input type="text" name="total"></td>
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
		var orderForm = document.querySelector('#orderForm');
		var account_id = document.querySelector('[name=account_id]');
		var product_id = document.querySelector('[name=product_id]');
		var order_count = document.querySelector('[name=order_count]');
		var total = document.querySelector('[name=total]');
		
		// 유효성 체크
		if (isNaN(account_id.value) || isNaN(product_id.value) || isNaN(order_count.value) || isNaN(total.value)){
			alert('숫자를 입력하세요');
			return false;
		}
		
		orderForm.submit();
	}
</script>
</html>