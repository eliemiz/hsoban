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
		String account_id = request.getParameter("account_id");
		if (account_id == null || account_id.trim().equals("")){
			account_id = "";
		}
		
		// 목록 불러오기
		Dao_Cart dao = new Dao_Cart();
		ArrayList<Cart> list;
		if (account_id == ""){
			list = dao.getCartList();
		} else {
			list = dao.getCartList(Integer.parseInt(account_id));	
		}
	%>
<body>
	<form method="post" id="cartForm">
		<table>
			<tr>
				<th>account_id</th>
				<td><input type="text" name="account_id" value="<%=account_id%>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="검색" id="searchButton" class="btn btn_thatch">
					<input type="button" value="새 데이터 입력" id="insertButton" class="btn btn_black" onclick="location.href='cart_insert.jsp'">
				</td>
			</tr>
		</table>
	</form>
	<table id="cartList">
		<tr>
			<th>account_id</th>
			<th>product_id</th>
			<th>color</th>
			<th>count</th>
		</tr>
		<%
		for (Cart cart : list){
		%>
		
		<tr onclick="callDetail(<%=cart.getAccount_id() %>, <%=cart.getProduct_id() %>, '<%=cart.getColor()%>')">	
			<td><%=cart.getAccount_id() %></td>
			<td><%=cart.getProduct_id() %></td>
			<td><%=cart.getColor() %></td>
			<td><%=cart.getCount() %></td>
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
		
		// 유효성 체크
		if (isNaN(account_id.value)){
			alert('숫자를 입력해주세요.');
			return false;
		}
		
		document.querySelector('#cartForm').submit();
	}

	function callDetail(){
		var url = "cart_detail.jsp?";
		url += "account_id=" + arguments[0];
		url += "&product_id=" + arguments[1];
		url += "&color=" + arguments[2];
		location.href = url;
	}
	
</script>
</html>
