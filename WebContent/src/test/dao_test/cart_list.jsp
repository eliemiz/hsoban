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

body {
	width: 90%;
	margin: auto;
	padding-top: 50px;
}

</style>
</head>

	<%
		// 변수 선언
		// #1. 처음 페이지 오픈 시에는 받은 account_id parameter값이 없으므로 null
		// #6. 검색 후의 페이지. parameter로 account_id를 받아 가지고 있다.
		String account_id = request.getParameter("account_id");
		if (account_id == null || account_id.trim().equals("")){
			account_id = "";
		}
		
		// 목록 불러오기
		Dao_Cart dao = new Dao_Cart();
		ArrayList<Cart> list;
		
		// #2. account_id == ""이기 때문에 전체 리스트를 로드한다.
		// #7. account_id를 가지고 있기 때문에 account_id를 이용해 리스트를 조회한다.
		if (account_id == ""){
			list = dao.getCartList();
		} else {
			list = dao.getCartList(Integer.parseInt(account_id));	
		}
	%>
<body>
	<%-- #3. 검색form 및 테이블 출력. 리스트에 현재 전체 리스트를 출력한다. --%>
	<%-- #4. account_id 입력 후 검색 시 script의 searchButton.onclick으로 간다. --%>
	<%-- #8. 검색form 및 테이블 출력. 7번과정에서 account_id를 이용해 검색된 리스트가 화면에 출력된다. --%>
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
		
		<%-- #9. 테이블의 행을 클릭하면 특정 값들을 가진 채 script의 callDetail() 메서드를 실행한다. --%>
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
	
	// #5. account_id에 있는 값의 유효성을 체크한 후 cartForm을 submit한다.
	// submit 할 때 name=account_id인 값을 parameter로 전송한다.
	searchButton.onclick = function() {
		var account_id = document.querySelector('[name=account_id]');
		
		// 유효성 체크
		if (isNaN(account_id.value)){
			alert('숫자를 입력해주세요.');
			return false;
		}
		
		document.querySelector('#cartForm').submit();
	}

	// #10. 위에서 받은 매개변수들을 이용해 url을 구성한다.
	// cart_detail.jsp?account_id=100101&product_id=100001&color=블랙
	// 위와 같은 url을 구성해 해당 페이지를 로드한다(location=href = url)
	function callDetail(){
		var url = "cart_detail.jsp?";
		url += "account_id=" + arguments[0];
		url += "&product_id=" + arguments[1];
		url += "&color=" + arguments[2];
		location.href = url;
	}
	
</script>
</html>
