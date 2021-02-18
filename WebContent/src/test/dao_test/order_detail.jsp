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
//변수 선언 for 페이지 로드
		String order_id = request.getParameter("order_id");

		// validate
		if (order_id == null || order_id.trim().equals("")) {
			order_id = "0";
		}
		
		Dao_Order dao = new Dao_Order();
		Order order = dao.getOrder(Integer.parseInt(order_id));
%>
<body>
		<form method="post" id="orderForm">
		<table>
			<tr>
				<th>order_id</th>
				<td><input type="text" name="order_id" value="<%=order.getOrder_id()%>" disabled></td>
			</tr>
			<tr>
				<th>account_id</th>
				<td><input type="text" name="account_id" value="<%=order.getAccount_id()%>" disabled></td>
			</tr>
			<tr>
				<th>product_id</th>
				<td><input type="text" name="product_id" value="<%=order.getProduct_id() %>" disabled></td>
			</tr>
			<tr>
				<th>color</th>
				<td><input type="text" name="color" value="<%=order.getColor() %>" disabled></td>
			</tr>
			<tr>
				<th>order_count</th>
				<td><input type="text" name="order_count" value="<%=order.getOrder_count()%>" disabled></td>
			</tr>
			<tr>
				<th>order_date</th>
				<td><input type="text" name="order_date" value="<%=order.getOrder_date()%>" disabled></td>
			</tr>
			<tr>
				<th>post</th>
				<td><input type="text" name="post" value="<%=order.getPost() %>" disabled></td>
			</tr>
			<tr>
				<th>address</th>
				<td><input type="text" name="address" value="<%=order.getAddress() %>" disabled></td>
			</tr>
			<tr>
				<th>address2</th>
				<td><input type="text" name="address2" value="<%=order.getAddress2() %>" disabled></td>
			</tr>
			<tr>
				<th>order_message</th>
				<td><input type="text" name="order_message" value="<%=order.getOrder_message() %>" disabled></td>
			</tr>
			<tr>
				<th>pay</th>
				<td><input type="text" name="pay" value="<%=order.getPay() %>" disabled></td>
			</tr>
			<tr>
				<th>total</th>
				<td><input type="text" name="total" value="<%=order.getTotal() %>" disabled></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="리스트로 이동" onclick="location.href='order_list.jsp'">
				</td>
			</tr>
		</table>
	</form>


</body>
<script type="text/javascript">
</script>
</html>