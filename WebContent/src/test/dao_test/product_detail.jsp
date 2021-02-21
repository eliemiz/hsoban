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
	// 변수 선언(페이지 로드)
	String product_id = request.getParameter("product_id");
	String color = request.getParameter("color");
	
	// 유효성 체크
	if(product_id==null || product_id.trim().equals("")){
		product_id = "0";
	}
	if(color==null){
		color = "";
	}
	
	Dao_Product dao = new Dao_Product();
	Product prod = dao.getProdList(Integer.parseInt(product_id), color);
%>
<body>
	<form method="post">
	<table>
		<tr><th>Product_ID</th><td><input type="text" name="product_id" value="<%=prod.getProduct_id()%>"/>
		<tr><th>Color</th><td><input type="text" name="color" value="<%=prod.getColor()%>"/></td></tr>		
		<tr><th>Name</th><td><input type="text" name="name" value="<%=prod.getName()%>"/></td></tr>		
		<tr><th>Category</th><td><input type="text" name="color" value="<%=prod.getCategory()%>"/></td></tr>		
		<tr><th>Size</th><td><input type="text" name="color" value="<%=prod.getProduct_size()%>"/></td></tr>		
		<tr><th>Price</th><td><input type="text" name="color" value="<%=prod.getPrice()%>"/></td></tr>
		<tr><td align="center" colspan="2"><input type="button" value="리스트로 이동" onclick="location.href='product_list.jsp'"/></td></tr>		
	</table>
	</form>
</body>
</html>