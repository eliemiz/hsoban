<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
	import="hsoban.dao.*" import="hsoban.vo.*"%>
<% request.setCharacterEncoding("UTF-8");
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
	
	// 변수 선언
		String product_id = request.getParameter("product_id");
		String color = request.getParameter("color");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String account_id = request.getParameter("account_id");
		String posting_date_s = request.getParameter("posting_date_s");
		String views = request.getParameter("views");
		String attach = request.getParameter("attach");
	
	// validate
	if (product_id == null || product_id.trim().equals("")) {
		product_id = "0";
	}
	if (color == null) {
		color = "";
	}
	if (title == null) {
		title = "";
	}
	if (content == null) {
		content = "";
	}
	if (account_id == null || account_id.trim().equals("")) {
		account_id = "0";
	}
	if (posting_date_s == null) {
		posting_date_s = "";
	}
	if (views == null || views.trim().equals("")) {
		views = "0";
	}
	if (attach == null) {
		attach = "";
	}
	
	// insert
	if (product_id != "0"){
		Review review = new Review(Integer.parseInt(product_id), color, title, content, 
				Integer.parseInt(account_id), posting_date_s, Integer.parseInt(views), attach);
		
		Dao_Review dao = new Dao_Review();
		dao.insertReview(review);		
		
		response.sendRedirect("review_list.jsp");
	}
	
	%>
<body>
	<form method="post" id="reviewForm">
 <table>
		
		<tr>
			<th>product_id</th>
			<td><input type="text" name="product_id"></td>
		</tr>	
		<tr>	
			<th>color</th>
			<td><input type="text" name="color"></td>
		</tr>	
		<tr>	
			<th>title</th>
			<td><input type="text" name="title"></td>
		</tr>	
		<tr>			
			<th>content</th>
			<td><input type="text" name="content"></td>
		</tr>	
		<tr>	
			<th>account_id</th>
			<td><input type="text" name="account_id"></td>
		</tr>	
		<tr>	
			<th>posting_date_s</th>
			<td><input type="text" name="posting_date_s"></td>
		</tr>	
		<tr>	
			<th>views</th>
			<td><input type="text" name="views"></td>
		</tr>	
		<tr>	
			<th>attach</th>
			<td><input type="text" name="attach"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="입력" class="btn btn_thatch" id="insertButton">
			</td>
	   </tr>
   </table>
	</form>
</body>
<script type="text/javascript">
	var insertButton = document.querySelector('#insertButton');
	insertButton.onclick = function() {
		var reviewForm = document.querySelector('#reviewForm');
		var product_id = document.querySelector('[name=product_id]');
		var color = document.querySelector('[name=color]');
		var title = document.querySelector('[name=title]');
		var content = document.querySelector('[name=content]');
		var account_id = document.querySelector('[name=account_id]');
		var posting_date_s = document.querySelector('[name=posting_date_s]');
		var views = document.querySelector('[name=views]');
		var attach = document.querySelector('[name=attach]');
		// 유효성 체크
		if (isNaN(product_id.value) || isNaN(account_id.value) || isNaN(views.value)){
			alert('숫자를 입력하세요');
			return false;
		}
		if ((color.value)==null ||(color.value)==""){
			alert('글자를 입력하세요');
			return false;
		}
		if ((title.value)==null ||(title.value)==""){
			alert('글자를 입력하세요');
			return false;
		}
		if ((content.value)==null ||(content.value)==""){
			alert('글자를 입력하세요');
			return false;
		}
		
		reviewForm.submit();
	}
</script>
</html>