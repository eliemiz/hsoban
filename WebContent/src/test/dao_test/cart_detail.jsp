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
		// 변수 선언 for 페이지 로드
		String account_id = request.getParameter("account_id");
		String product_id = request.getParameter("product_id");
		String color = request.getParameter("color");
				
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
		
		Dao_Cart dao = new Dao_Cart();
		Cart cart = dao.getCart(Integer.parseInt(account_id), Integer.parseInt(product_id), color);
		
		// 변수 선언 for update
		String count = request.getParameter("count");
		if (count == null || count.trim().equals("")) {
			count = "0";
		}
		
		String process = request.getParameter("process");
		if (process == null) {
			process = "";
		}
		if (process.equals("update")) {

			// update
			Cart newCart = new Cart(Integer.parseInt(account_id), Integer.parseInt(product_id), color, Integer.parseInt(count));
			dao.updateCart(newCart);
			response.sendRedirect("cart_list.jsp");
			
		} else if (process.equals("delete")) {
			
			// delete
			dao.deleteCart(Integer.parseInt(account_id), Integer.parseInt(product_id), color);
			response.sendRedirect("cart_list.jsp");
		}
	%>
<body>
	<form method="post" id="cartForm">
		<input type="hidden" name="process" value="">
		<table>
			<tr>
				<th>account_id</th>
				<td><input type="text" name="account_id" value="<%=cart.getAccount_id()%>" disabled></td>
			</tr>
			<tr>
				<th>product_id</th>
				<td><input type="text" name="product_id" value="<%=cart.getProduct_id()%>" disabled></td>
			</tr>
			<tr>
				<th>color</th>
				<td><input type="text" name="color" value="<%=cart.getColor()%>" disabled></td>
			</tr>
			<tr>
				<th>count</th>
				<td><input type="text" name="count" value="<%=cart.getCount()%>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정" id="updateButton">
					<input type="submit" value="삭제" id="deleteButton">
					<input type="button" value="리스트로 이동" onclick="location.href='cart_list.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
	var cartForm = document.querySelector('#cartForm');
	var process = document.querySelector('[name=process]');
	var updateButton = document.querySelector('#updateButton');
	var deleteButton = document.querySelector('#deleteButton');
	
	updateButton.onclick = function() {
		
		// 유효성 체크
		var count = document.querySelector('[name=count]');
		if (isNaN(count.value)){
			alert('숫자를 입력하세요');
			return false;
		}
		
		process.value = 'update';
		cartForm.submit();
	}
	
	deleteButton.onclick = function() {
		process.value = 'delete';
		if (confirm('정말 삭제하시겠습니까?')){
			cartForm.submit();	
		} 
	}
	
</script>
</html>