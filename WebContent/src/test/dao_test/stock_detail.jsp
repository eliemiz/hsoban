<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="java.util.*"  import="java.net.*"
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
</head>
<%
	//변수 선언(페이지 로드)
	String product_id = request.getParameter("product_id");
	String color = request.getParameter("color");
	
	// 유효성 체크
	if(product_id==null || product_id.trim().equals("")){
		product_id = "0";
	}
	if(color==null){
		color = "";
	}
	
	Dao_Stock dao = new Dao_Stock();
	Stock st = dao.getStock(Integer.parseInt(product_id), color);
	
	// 변수 선언(수정)
	String stock = request.getParameter("stock");
	if(stock==null || stock.trim().equals("")){
		stock="0";
	}
	String process = request.getParameter("process");
	if(process==null){
		process="";
	} else if(process.equals("update")){
		Stock newStock = new Stock(Integer.parseInt(product_id),color,Integer.parseInt(stock));
		dao.updateStock(newStock);
		response.sendRedirect("stock_list.jsp");
	}
%>
<body>
	<form method="post" id="stockForm">
	<input type="hidden" name="process" value=""/>
	<table>
		<tr><th>Product_ID</th><td><input type="text" name="product_id" value="<%=st.getProduct_id()%>"/></td></tr>
		<tr><th>Color</th><td><input type="text" name="color" value="<%=st.getColor()%>"/></td></tr>
		<tr><th>Stock</th><td><input type="text" name="stock" value="<%=st.getStock()%>"/></td></tr>
		<tr><td align="center" colspan="2">
				<input type="submit" value="수정" id="updateButton"/>
				<input type="button" value="리스트로 이동" onclick="location.href='stock_list.jsp'"/>
	</table>
	</form>
</body>
<script type="text/javascript">
	var stockForm = document.querySelector("#stockForm");
	var process = document.querySelector("[name=process]");
	var updateButton = document.querySelector("#updateButton");
	
	updateButton.onclick = function(){
		var stock = document.querySelector("[name=stock]");
		if(isNaN(stock.value)){
			alert('숫자를 입력하세요.');
			return false;
		}
		process.value = 'update';
		stockForm.submit();
	}
</script>
</html>