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
<style type="text/css">
	tr:hover{background-color:yellow;}
	td{text-align:center;}
</style>
</head>
<%
	// 목록 출력
	Dao_Stock dao = new Dao_Stock();
	ArrayList<Stock> stlist = dao.getStockList();
%>
<body>
	<h3>재고 관리</h3>
	<table>
		<tr><th>Product_ID</th><th>Color</th><th>Stock</th></tr>
		<%for(Stock st:stlist){%>
		<tr ondblclick="callDetail(<%=st.getProduct_id()%>,'<%=st.getColor()%>')">
			<td><%=st.getProduct_id()%></td>
			<td><%=st.getColor()%></td>
			<td><%=st.getStock()%></td>
		</tr>
		<%}%>
	</table>
</body>
<script type="text/javascript">
	function callDetail(product_id, color){
		var url = "stock_detail.jsp?";
		url += "product_id=" + arguments[0];
		url += "&color=" + arguments[1];
		location.href = url;
	}
</script>
</html>