<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
	import="hsoban.dao.*" import="hsoban.vo.*"
    %>
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
#cartList tr:first-child:hover {
	cursor: auto;
}

#cartList tr:hover {
	background-color: #f7f7f7;
	cursor: pointer;
}

#cartList tr:active {
	background-color: #f0f0f0;
}

</style>
</head>
<%
		// 변수 선언
		String order_id = request.getParameter("order_id");
		if (order_id == null || order_id.trim().equals("")){
			order_id = "";
		}
		
		// 목록 불러오기
		Dao_Order dao = new Dao_Order();
		ArrayList<Order> list;
		if (order_id == ""){
			list = dao.getOrderList();
		} else {
			list = dao.getOrderList(Integer.parseInt(order_id));	
		}
	%>
<body>
		<form method="post" id="orderForm">
		<table>
			<tr>
			<th>order_id</th>
				<td><input type="text" name="order_id" value="<%=order_id%>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="검색" id="searchButton" class="btn btn_thatch">
					<input type="button" value="새 데이터 입력" id="insertButton" class="btn btn_black" onclick="location.href='order_insert.jsp'">
				</td>
			</tr>
		</table>
	</form>
	<table id="orderList">
		<tr>
			<th>order_id</th>
			<th>account_id</th>
			<th>product_id</th>
			<th>color</th>
			<th>order_count</th>
			<th>order_date</th>
			<th>post</th>
			<th>address</th>
			<th>address2</th>
			<th>order_message</th>
			<th>pay</th> 
			<th>total</th>
		</tr>
		<%
		for (Order order : list){
		%>
		
		<tr onclick="callDetail(<%=order.getOrder_id() %>)">	
			<td><%=order.getOrder_id() %></td>
			<td><%=order.getAccount_id() %></td>
			<td><%=order.getProduct_id() %></td>
			<td><%=order.getColor() %></td>
			<td><%=order.getOrder_count() %></td>
			<td><%=order.getOrder_date() %></td>
			<td><%=order.getPost() %></td>
			<td><%=order.getAddress() %></td>
			<td><%=order.getAddress2() %></td>
			<td><%=order.getOrder_message() %></td>
			<td><%=order.getPay() %></td>
			<td><%=order.getTotal() %></td>
		</tr>
		<%
		}
		%> 
	</table>
</body>
<script type="text/javascript">
	var searchButton = document.querySelector('#searchButton');
	searchButton.onclick = function() {
		var order_id = document.querySelector('[name=order_id]');
		
		// 유효성 체크
		if (isNaN(order_id.value)){
			alert('숫자를 입력해주세요.');
			return false;
		}		
		document.querySelector('#orderForm').submit();
	}

	function callDetail(order_id){
		location.href= "order_detail.jsp?order_id="+order_id;
	}
	
</script>
</html>