<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" import="hsoban.vo.*" import="hsoban.dao.*" %>
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
	String review_id = request.getParameter("review_id");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String content = request.getParameter("content");
	
	// validate
	if (review_id == null || review_id.trim().equals("")) {
		review_id = "0";
	}
	if (id == null) {
		id = "";
	}
	if (pass == null) {
		pass = "";
	}
	if (content == null) {
		content = "";
	}
	
	// insert
	if (review_id != "0"){
		Comments comment = new Comments(0, Integer.parseInt(review_id), id, pass, content);
		
		Dao_Comments dao = new Dao_Comments();
		dao.insertComments(comment);
		
		response.sendRedirect("comment_list.jsp");
	}
	
	%>
<body>
	<form method="post" id="commentForm">
		<table>
			<tr>
				<th>review_id</th>
				<td><input type="text" name="review_id"></td>
			</tr>
			<tr>
				<th>id</th>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<th>pass</th>
				<td><input type="text" name="pass"></td>
			</tr>
			<tr>
				<th>content</th>
				<td><input type="text" name="content"></td>
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
		var commentForm = document.querySelector('#commentForm');
		var review_id = document.querySelector('[name=review_id]');
		
		// 유효성 체크
		if (isNaN(review_id.value)){
			alert('숫자를 입력하세요');
			return false;
		}
		
		commentForm.submit();
	}
</script>
</html>