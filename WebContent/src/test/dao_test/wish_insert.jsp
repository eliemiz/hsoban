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
	
	// insert
	if (account_id != "0"){
		WishList wish = new WishList(Integer.parseInt(account_id), Integer.parseInt(product_id), color);
		
		Dao_WishList dao = new Dao_WishList();
		dao.insertWish(wish);		
		
		response.sendRedirect("wish_list.jsp");
	}
	
	%>
<body>
	<form method="post" id="wishForm">
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
				<td colspan="2"><input type="button" value="입력" class="btn btn_thatch" id="insertButton"></td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
	var insertButton = document.querySelector('#insertButton');
	insertButton.onclick = function() {
		var wishForm = document.querySelector('#wishForm');
		var account_id = document.querySelector('[name=account_id]');
		var product_id = document.querySelector('[name=product_id]');
		
		// 유효성 체크
		if (isNaN(account_id.value) || isNaN(product_id.value)){
			alert('숫자를 입력하세요');
			return false;
		}
		
		wishForm.submit();
	}
</script>
</html>