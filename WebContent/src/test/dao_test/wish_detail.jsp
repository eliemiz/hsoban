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
		
		Dao_WishList dao = new Dao_WishList();
		WishList wish = dao.getWish(Integer.parseInt(account_id), Integer.parseInt(product_id), color);
				
		String process = request.getParameter("process");
		if (process == null) {
			process = "";
		}
		
		if (process.equals("delete")) {
			
			// delete
			dao.deleteWish(Integer.parseInt(account_id), Integer.parseInt(product_id), color);
			response.sendRedirect("wish_list.jsp");
		}
	%>
<body>
	<form method="post" id="wishForm">
		<input type="hidden" name="process" value="">
		<table>
			<tr>
				<th>account_id</th>
				<td><input type="text" name="account_id" value="<%=wish.getAccount_id()%>" disabled></td>
			</tr>
			<tr>
				<th>product_id</th>
				<td><input type="text" name="product_id" value="<%=wish.getProduct_id()%>" disabled></td>
			</tr>
			<tr>
				<th>color</th>
				<td><input type="text" name="color" value="<%=wish.getColor()%>" disabled></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정" id="updateButton" disabled>
					<input type="submit" value="삭제" id="deleteButton">
					<input type="button" value="리스트로 이동" onclick="location.href='wish_list.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
	var wishForm = document.querySelector('#wishForm');
	var process = document.querySelector('[name=process]');
	var deleteButton = document.querySelector('#deleteButton');
	
	deleteButton.onclick = function() {
		process.value = 'delete';
		if (confirm('정말 삭제하시겠습니까?')){
			wishForm.submit();	
		} 
	}
	
</script>
</html>