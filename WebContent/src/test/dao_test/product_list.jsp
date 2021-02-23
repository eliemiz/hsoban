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
	// 변수 선언
	String category = request.getParameter("category");
	if(category==null || category.trim().equals("")){
		category = "";
	}
	
	// 목록 출력
	Dao_Product dao = new Dao_Product();
	ArrayList<Product> plist = dao.prodList();
	if(category==""){
		plist = dao.prodList();
	} else {
		plist = dao.getProdList(category);
	}

%>
<body>
	<h3>물품정보검색</h3>
	<form method="post" id="productForm">
	<table>
		<tr><th>Category</th>
			<td><input type="text" name="category" value="<%=category%>"/></td>
		</tr>
		<tr><td colspan="2"><input type="button" value="검색" id="searchButton" class="btn btn_thatch"/></td></tr>
	</table>
	</form>
	
	<h3>물품 리스트</h3>
	<table>
		<tr>
			<th>Product_ID</th>
			<th>Color</th>
			<th>Name</th>
			<th>Category</th>
			<th>Size</th>
			<th>Price</th>
		</tr>
		<%for(Product p:plist){%>
		<tr ondblclick="callDetail(<%=p.getProduct_id()%>,'<%=p.getColor()%>')">
		<td><%=p.getProduct_id()%></td><td><%=p.getColor()%></td>
		<td><%=p.getName()%></td><td><%=p.getCategory()%></td>
		<td><%=p.getProduct_size()%></td><td><%=p.getPrice()%></td></tr>
		<%} %>
	</table>
</body>
<script type="text/javascript">
	var searchButton = document.querySelector('#searchButton');
	searchButton.onclick = function(){
		var category = document.querySelector("[name=category]");
		if(category==null){
			alert("카테고리명을 입력해주세요.");
			return false;
		}
		document.querySelector("#productForm").submit();
	}

	function callDetail(product_id, color){
		var url = "product_detail.jsp?";
		url += "product_id=" + arguments[0];
		url += "&color=" + arguments[1];
		location.href = url;
	}
</script>
</html>